// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct SubscriptionPricePoint: Codable, Equatable, Identifiable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks?

    public enum `Type`: String, Codable, CaseIterable {
        case subscriptionPricePoints
    }

    public struct Attributes: Codable, Equatable {
        public var customerPrice: String?
        public var proceeds: String?
        public var proceedsYear2: String?

        public init(customerPrice: String? = nil, proceeds: String? = nil, proceedsYear2: String? = nil) {
            self.customerPrice = customerPrice
            self.proceeds = proceeds
            self.proceedsYear2 = proceedsYear2
        }
    }

    public struct Relationships: Codable, Equatable {
        public var territory: Territory?

        public struct Territory: Codable, Equatable {
            public var links: Links?
            public var data: Data?

            public struct Links: Codable, Equatable {
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

            public struct Data: Codable, Equatable, Identifiable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, Codable, CaseIterable {
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

        public init(territory: Territory? = nil) {
            self.territory = territory
        }
    }

    public init(type: `Type` = .subscriptionPricePoints, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
