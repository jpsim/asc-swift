// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct MarketplaceWebhook: Codable, Equatable, Identifiable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var links: ResourceLinks?

    public enum `Type`: String, Codable, CaseIterable {
        case marketplaceWebhooks
    }

    public struct Attributes: Codable, Equatable {
        public var endpointURL: URL?

        public init(endpointURL: URL? = nil) {
            self.endpointURL = endpointURL
        }

        private enum CodingKeys: String, CodingKey {
            case endpointURL = "endpointUrl"
        }
    }

    public init(type: `Type` = .marketplaceWebhooks, id: String, attributes: Attributes? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.links = links
    }
}
