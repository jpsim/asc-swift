// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct SubscriptionPrice: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks?

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case subscriptionPrices
    }

    public struct Attributes: Codable, Equatable, Sendable {
        public var startDate: String?
        public var isPreserved: Bool?

        public init(startDate: String? = nil, isPreserved: Bool? = nil) {
            self.startDate = startDate
            self.isPreserved = isPreserved
        }

        private enum CodingKeys: String, CodingKey {
            case startDate
            case isPreserved = "preserved"
        }
    }

    public struct Relationships: Codable, Equatable, Sendable {
        public var territory: Territory?
        public var subscriptionPricePoint: SubscriptionPricePoint?

        public struct Territory: Codable, Equatable, Sendable {
            public var links: Links?
            public var data: Data?

            public struct Links: Codable, Equatable, Sendable {
                public var this: URL?
                public var related: URL?

                public init(this: URL? = nil, related: URL? = nil) {
                    self.this = this
                    self.related = related
                }

                private enum CodingKeys: String, CodingKey {
                    case this = "self"
                    case related
                }
            }

            public struct Data: Codable, Equatable, Identifiable, Sendable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, CaseIterable, Codable, Sendable {
                    case territories
                }

                public init(type: `Type` = .territories, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public struct SubscriptionPricePoint: Codable, Equatable, Sendable {
            public var links: Links?
            public var data: Data?

            public struct Links: Codable, Equatable, Sendable {
                public var this: URL?
                public var related: URL?

                public init(this: URL? = nil, related: URL? = nil) {
                    self.this = this
                    self.related = related
                }

                private enum CodingKeys: String, CodingKey {
                    case this = "self"
                    case related
                }
            }

            public struct Data: Codable, Equatable, Identifiable, Sendable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, CaseIterable, Codable, Sendable {
                    case subscriptionPricePoints
                }

                public init(type: `Type` = .subscriptionPricePoints, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public init(territory: Territory? = nil, subscriptionPricePoint: SubscriptionPricePoint? = nil) {
            self.territory = territory
            self.subscriptionPricePoint = subscriptionPricePoint
        }
    }

    public init(type: `Type` = .subscriptionPrices, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
