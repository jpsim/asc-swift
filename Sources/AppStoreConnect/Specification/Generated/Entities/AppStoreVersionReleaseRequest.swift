// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation

public struct AppStoreVersionReleaseRequest: Codable, Hashable, Identifiable {
    public var type: `Type`
    public var id: String
    public var links: ResourceLinks

    public enum `Type`: String, Codable, CaseIterable {
        case appStoreVersionReleaseRequests
    }

    public init(type: `Type`, id: String, links: ResourceLinks) {
        self.type = type
        self.id = id
        self.links = links
    }
}
