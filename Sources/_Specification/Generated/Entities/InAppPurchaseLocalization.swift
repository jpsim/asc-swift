// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct InAppPurchaseLocalization: Codable, Equatable, Identifiable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks?

    public enum `Type`: String, Codable, CaseIterable {
        case inAppPurchaseLocalizations
    }

    public struct Attributes: Codable, Equatable {
        public var name: String?
        public var locale: String?
        public var description: String?
        public var state: State?

        public enum State: String, Codable, CaseIterable {
            case prepareForSubmission = "PREPARE_FOR_SUBMISSION"
            case waitingForReview = "WAITING_FOR_REVIEW"
            case approved = "APPROVED"
            case rejected = "REJECTED"
        }

        public init(name: String? = nil, locale: String? = nil, description: String? = nil, state: State? = nil) {
            self.name = name
            self.locale = locale
            self.description = description
            self.state = state
        }
    }

    public struct Relationships: Codable, Equatable {
        public var inAppPurchaseV2: InAppPurchaseV2?

        public struct InAppPurchaseV2: Codable, Equatable {
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
                    case inAppPurchases
                }

                public init(type: `Type` = .inAppPurchases, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public init(inAppPurchaseV2: InAppPurchaseV2? = nil) {
            self.inAppPurchaseV2 = inAppPurchaseV2
        }
    }

    public init(type: `Type` = .inAppPurchaseLocalizations, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
