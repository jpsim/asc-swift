// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AppPriceV2: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks?

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case appPrices
    }

    public struct Attributes: Codable, Equatable, Sendable {
        public var isManual: Bool?
        public var startDate: String?
        public var endDate: String?

        public init(isManual: Bool? = nil, startDate: String? = nil, endDate: String? = nil) {
            self.isManual = isManual
            self.startDate = startDate
            self.endDate = endDate
        }

        private enum CodingKeys: String, CodingKey {
            case isManual = "manual"
            case startDate
            case endDate
        }
    }

    public struct Relationships: Codable, Equatable, Sendable {
        public var appPricePoint: AppPricePoint?
        public var territory: Territory?

        public struct AppPricePoint: Codable, Equatable, Sendable {
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
                    case appPricePoints
                }

                public init(type: `Type` = .appPricePoints, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

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

        public init(appPricePoint: AppPricePoint? = nil, territory: Territory? = nil) {
            self.appPricePoint = appPricePoint
            self.territory = territory
        }
    }

    public init(type: `Type` = .appPrices, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
