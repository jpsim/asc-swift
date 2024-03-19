// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct SubscriptionPriceCreateRequest: Codable, Equatable, Sendable {
    public var data: Data

    public struct Data: Codable, Equatable, Sendable {
        public var type: `Type`
        public var attributes: Attributes?
        public var relationships: Relationships

        public enum `Type`: String, CaseIterable, Codable, Sendable {
            case subscriptionPrices
        }

        public struct Attributes: Codable, Equatable, Sendable {
            public var startDate: String?
            public var isPreserveCurrentPrice: Bool?

            public init(startDate: String? = nil, isPreserveCurrentPrice: Bool? = nil) {
                self.startDate = startDate
                self.isPreserveCurrentPrice = isPreserveCurrentPrice
            }

            private enum CodingKeys: String, CodingKey {
                case startDate
                case isPreserveCurrentPrice = "preserveCurrentPrice"
            }
        }

        public struct Relationships: Codable, Equatable, Sendable {
            public var subscription: Subscription
            public var territory: Territory?
            public var subscriptionPricePoint: SubscriptionPricePoint

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

            public struct Territory: Codable, Equatable, Sendable {
                public var data: Data?

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

                public init(data: Data? = nil) {
                    self.data = data
                }
            }

            public struct SubscriptionPricePoint: Codable, Equatable, Sendable {
                public var data: Data

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

                public init(data: Data) {
                    self.data = data
                }
            }

            public init(subscription: Subscription, territory: Territory? = nil, subscriptionPricePoint: SubscriptionPricePoint) {
                self.subscription = subscription
                self.territory = territory
                self.subscriptionPricePoint = subscriptionPricePoint
            }
        }

        public init(type: `Type` = .subscriptionPrices, attributes: Attributes? = nil, relationships: Relationships) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
