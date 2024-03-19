// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppStoreVersionPromotion: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String
    public var links: ResourceLinks?

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case appStoreVersionPromotions
    }

    public init(type: `Type` = .appStoreVersionPromotions, id: String, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.links = links
    }
}
