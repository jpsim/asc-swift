// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct ScmRepositoryResponse: Codable, Equatable, Sendable {
    /// ScmRepository
    public var data: ScmRepository
    public var included: [IncludedItem]?
    public var links: DocumentLinks

    public enum IncludedItem: Codable, Equatable, Sendable {
        case scmProvider(ScmProvider)
        case scmGitReference(ScmGitReference)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(ScmProvider.self) {
                self = .scmProvider(value)
            } else if let value = try? container.decode(ScmGitReference.self) {
                self = .scmGitReference(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (ScmProvider, ScmGitReference)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .scmProvider(let value): try container.encode(value)
            case .scmGitReference(let value): try container.encode(value)
            }
        }
    }

    public init(data: ScmRepository, included: [IncludedItem]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
