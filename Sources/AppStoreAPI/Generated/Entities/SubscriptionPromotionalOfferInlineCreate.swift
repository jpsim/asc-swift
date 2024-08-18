// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct SubscriptionPromotionalOfferInlineCreate: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String?
    public var attributes: Attributes
    public var relationships: Relationships?

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case subscriptionPromotionalOffers
    }

    public struct Attributes: Codable, Equatable, Sendable {
        public var name: String
        public var offerCode: String
        public var duration: SubscriptionOfferDuration
        public var offerMode: SubscriptionOfferMode
        public var numberOfPeriods: Int

        public init(name: String, offerCode: String, duration: SubscriptionOfferDuration, offerMode: SubscriptionOfferMode, numberOfPeriods: Int) {
            self.name = name
            self.offerCode = offerCode
            self.duration = duration
            self.offerMode = offerMode
            self.numberOfPeriods = numberOfPeriods
        }
    }

    public struct Relationships: Codable, Equatable, Sendable {
        public var subscription: Subscription?
        public var prices: Prices?

        public struct Subscription: Codable, Equatable, Sendable {
            public var data: Data?

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

            public init(data: Data? = nil) {
                self.data = data
            }
        }

        public struct Prices: Codable, Equatable, Sendable {
            public var data: [Datum]?

            public struct Datum: Codable, Equatable, Identifiable, Sendable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, CaseIterable, Codable, Sendable {
                    case subscriptionPromotionalOfferPrices
                }

                public init(type: `Type` = .subscriptionPromotionalOfferPrices, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(data: [Datum]? = nil) {
                self.data = data
            }
        }

        public init(subscription: Subscription? = nil, prices: Prices? = nil) {
            self.subscription = subscription
            self.prices = prices
        }
    }

    public init(type: `Type` = .subscriptionPromotionalOffers, id: String? = nil, attributes: Attributes, relationships: Relationships? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
    }
}
