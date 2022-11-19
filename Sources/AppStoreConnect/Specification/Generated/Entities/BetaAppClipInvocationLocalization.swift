// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation

public struct BetaAppClipInvocationLocalization: Codable, Hashable, Identifiable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var links: ResourceLinks

    public enum `Type`: String, Codable, CaseIterable {
        case betaAppClipInvocationLocalizations
    }

    public struct Attributes: Codable, Hashable {
        public var title: String?
        public var locale: String?

        public init(title: String? = nil, locale: String? = nil) {
            self.title = title
            self.locale = locale
        }
    }

    public init(type: `Type`, id: String, attributes: Attributes? = nil, links: ResourceLinks) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.links = links
    }
}
