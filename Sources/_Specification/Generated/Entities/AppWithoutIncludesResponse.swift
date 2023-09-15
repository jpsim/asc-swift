// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppWithoutIncludesResponse: Codable, Hashable {
    /// PrereleaseVersion
    public var data: PrereleaseVersion
    public var links: DocumentLinks

    public init(data: PrereleaseVersion, links: DocumentLinks) {
        self.data = data
        self.links = links
    }
}
