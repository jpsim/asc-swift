// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct CustomerReview: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks?

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case customerReviews
    }

    public struct Attributes: Codable, Equatable, Sendable {
        public var rating: Int?
        public var title: String?
        public var body: String?
        public var reviewerNickname: String?
        public var createdDate: Date?
        public var territory: TerritoryCode?

        public init(rating: Int? = nil, title: String? = nil, body: String? = nil, reviewerNickname: String? = nil, createdDate: Date? = nil, territory: TerritoryCode? = nil) {
            self.rating = rating
            self.title = title
            self.body = body
            self.reviewerNickname = reviewerNickname
            self.createdDate = createdDate
            self.territory = territory
        }
    }

    public struct Relationships: Codable, Equatable, Sendable {
        public var response: Response?

        public struct Response: Codable, Equatable, Sendable {
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
                    case customerReviewResponses
                }

                public init(type: `Type` = .customerReviewResponses, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public init(response: Response? = nil) {
            self.response = response
        }
    }

    public init(type: `Type` = .customerReviews, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
