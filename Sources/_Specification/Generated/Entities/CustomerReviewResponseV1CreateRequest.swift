// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct CustomerReviewResponseV1CreateRequest: Codable, Equatable {
    public var data: Data

    public struct Data: Codable, Equatable {
        public var type: `Type`
        public var attributes: Attributes
        public var relationships: Relationships

        public enum `Type`: String, Codable, CaseIterable {
            case customerReviewResponses
        }

        public struct Attributes: Codable, Equatable {
            public var responseBody: String

            public init(responseBody: String) {
                self.responseBody = responseBody
            }
        }

        public struct Relationships: Codable, Equatable {
            public var review: Review

            public struct Review: Codable, Equatable {
                public var data: Data

                public struct Data: Codable, Equatable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case customerReviews
                    }

                    public init(type: `Type`, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data) {
                    self.data = data
                }
            }

            public init(review: Review) {
                self.review = review
            }
        }

        public init(type: `Type`, attributes: Attributes, relationships: Relationships) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
