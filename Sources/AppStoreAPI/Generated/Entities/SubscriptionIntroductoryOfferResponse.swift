// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct SubscriptionIntroductoryOfferResponse: Codable, Equatable, Sendable {
    /// SubscriptionIntroductoryOffer
    public var data: SubscriptionIntroductoryOffer
    public var included: [IncludedItem]?
    public var links: DocumentLinks

    public enum IncludedItem: Codable, Equatable, Sendable {
        case subscription(Subscription)
        case territory(Territory)
        case subscriptionPricePoint(SubscriptionPricePoint)

        public init(from decoder: any Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(Subscription.self) {
                self = .subscription(value)
            } else if let value = try? container.decode(Territory.self) {
                self = .territory(value)
            } else if let value = try? container.decode(SubscriptionPricePoint.self) {
                self = .subscriptionPricePoint(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (Subscription, Territory, SubscriptionPricePoint)."
                )
            }
        }

        public func encode(to encoder: any Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .subscription(let value): try container.encode(value)
            case .territory(let value): try container.encode(value)
            case .subscriptionPricePoint(let value): try container.encode(value)
            }
        }
    }

    public init(data: SubscriptionIntroductoryOffer, included: [IncludedItem]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
