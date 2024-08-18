// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct MarketplaceSearchDetail: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var links: ResourceLinks?

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case marketplaceSearchDetails
    }

    public struct Attributes: Codable, Equatable, Sendable {
        public var catalogURL: URL?

        public init(catalogURL: URL? = nil) {
            self.catalogURL = catalogURL
        }

        private enum CodingKeys: String, CodingKey {
            case catalogURL = "catalogUrl"
        }
    }

    public init(type: `Type` = .marketplaceSearchDetails, id: String, attributes: Attributes? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.links = links
    }
}
