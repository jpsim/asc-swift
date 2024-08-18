import Foundation
import PackagePlugin

@main
struct Plugin: CommandPlugin {
    enum Error: Swift.Error {
        case mismatchedFileContents([URL])
    }

    func performCommand(context: PluginContext, arguments: [String]) async throws {
        let packageURL = URL(filePath: context.package.directory.string)

        var argExtractor = ArgumentExtractor(arguments)
        let specURLs = argExtractor.extractOption(named: "spec").map { URL(filePath: $0, relativeTo: packageURL) }

        try runCreateAPI(context: context, specURLs: specURLs)

        let specTargetURLs = specURLs.map { $0.deletingLastPathComponent() }

        try syncFiles(
            [
                "Generated/Entities/ErrorLinks.swift",
                "Generated/Entities/ErrorResponse.swift",
                "Generated/Entities/ErrorSourceParameter.swift",
                "Generated/Entities/ErrorSourcePointer.swift",
                "Generated/Entities/PagedDocumentLinks.swift",
                "Generated/Extensions/AnyJSON.swift",
            ],
            relativeTo: specTargetURLs,
            to: packageURL.appending(components: "Sources", "AppStoreConnect", "Entities")
        )

        try deleteFiles(
            ["Generated/Extensions/StringCodingKey.swift"],
            relativeTo: specTargetURLs
        )

    }

    func runCreateAPI(context: PluginContext, specURLs: [URL]) throws {
        if specURLs.isEmpty {
            print("no specs to generate for")
            return
        }

        for specURL in specURLs {
            try runCreateAPI(with: specURL, context: context)
        }
    }

    func runCreateAPI(with specURL: URL, context: PluginContext) throws {
        let createAPI = try context.tool(named: "create-api")
        let executableURL = URL(filePath: createAPI.path.string)

        let packageURL = URL(filePath: context.package.directory.string)
        let configURL = packageURL.appending(components: "Plugins", "CreateAPI", ".create-api.yml")

        let specDirectoryURL = specURL.deletingLastPathComponent()
        let moduleName = specDirectoryURL.lastPathComponent
        let outputURL = specDirectoryURL.appending(component: "Generated")

        let createAPIArguments = [
            "generate",
            specURL.path,
            "--config",
            configURL.path,
            "--config-option",
            "module=\(moduleName)",
            "--output",
            outputURL.path,
            "--clean",
        ]

        let process = Process()
        process.executableURL = executableURL
        process.currentDirectoryURL = packageURL
        process.arguments = createAPIArguments

        try process.run()
        process.waitUntilExit()
    }

    func syncFiles(_ files: [String], relativeTo targetURLs: [URL], to destination: URL) throws {
        for file in files {
            let compareURLs = targetURLs.map { URL(filePath: file, relativeTo: $0) }

            let fileSet = try compareURLs.reduce(into: Set()) { try $0.insert(Data(contentsOf: $1)) }

            if fileSet.count > 1 {
                throw Error.mismatchedFileContents(compareURLs)
            }

            var contents = String(data: fileSet.first!, encoding: .utf8)!
            contents = contents.replacingOccurrences(of: "import AppStoreConnect\n", with: "")

            let dest = destination.appending(component: compareURLs.first!.lastPathComponent)

            for url in compareURLs {
                try? FileManager.default.removeItem(at: url)
            }

            try? FileManager.default.removeItem(at: dest)

            try contents.write(to: dest, atomically: true, encoding: .utf8)
        }
    }

    func deleteFiles(_ files: [String], relativeTo targetURLs: [URL]) throws {
        for file in files {
            for baseURL in targetURLs {
                try FileManager.default.removeItem(at: URL(filePath: file, relativeTo: baseURL))
            }
        }
    }
}
