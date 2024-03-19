// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct ScmProvider: Codable, Equatable, Identifiable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var links: ResourceLinks?

    public enum `Type`: String, Codable, CaseIterable {
        case scmProviders
    }

    public struct Attributes: Codable, Equatable {
        public var scmProviderType: ScmProviderType?
        public var url: URL?

        public init(scmProviderType: ScmProviderType? = nil, url: URL? = nil) {
            self.scmProviderType = scmProviderType
            self.url = url
        }
    }

    public init(type: `Type` = .scmProviders, id: String, attributes: Attributes? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.links = links
    }
}
