// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct SubscriptionAppStoreReviewScreenshotCreateRequest: Codable, Equatable, Sendable {
    public var data: Data

    public struct Data: Codable, Equatable, Sendable {
        public var type: `Type`
        public var attributes: Attributes
        public var relationships: Relationships

        public enum `Type`: String, CaseIterable, Codable, Sendable {
            case subscriptionAppStoreReviewScreenshots
        }

        public struct Attributes: Codable, Equatable, Sendable {
            public var fileSize: Int
            public var fileName: String

            public init(fileSize: Int, fileName: String) {
                self.fileSize = fileSize
                self.fileName = fileName
            }
        }

        public struct Relationships: Codable, Equatable, Sendable {
            public var subscription: Subscription

            public struct Subscription: Codable, Equatable, Sendable {
                public var data: Data

                public struct Data: Codable, Equatable, Identifiable, Sendable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, CaseIterable, Codable, Sendable {
                        case subscriptions
                    }

                    public init(type: `Type` = .subscriptions, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data) {
                    self.data = data
                }
            }

            public init(subscription: Subscription) {
                self.subscription = subscription
            }
        }

        public init(type: `Type` = .subscriptionAppStoreReviewScreenshots, attributes: Attributes, relationships: Relationships) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
