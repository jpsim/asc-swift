// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct BuildIcon: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var links: ResourceLinks?

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case buildIcons
    }

    public struct Attributes: Codable, Equatable, Sendable {
        public var name: String?
        public var iconAsset: ImageAsset?
        public var iconType: IconAssetType?

        public init(name: String? = nil, iconAsset: ImageAsset? = nil, iconType: IconAssetType? = nil) {
            self.name = name
            self.iconAsset = iconAsset
            self.iconType = iconType
        }
    }

    public init(type: `Type` = .buildIcons, id: String, attributes: Attributes? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.links = links
    }
}
