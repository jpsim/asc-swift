// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct SubscriptionResponse: Codable, Equatable, Sendable {
    /// Subscription
    public var data: Subscription
    public var included: [IncludedItem]?
    public var links: DocumentLinks

    public enum IncludedItem: Codable, Equatable, Sendable {
        case subscriptionLocalization(SubscriptionLocalization)
        case subscriptionAppStoreReviewScreenshot(SubscriptionAppStoreReviewScreenshot)
        case subscriptionGroup(SubscriptionGroup)
        case subscriptionIntroductoryOffer(SubscriptionIntroductoryOffer)
        case subscriptionPromotionalOffer(SubscriptionPromotionalOffer)
        case subscriptionOfferCode(SubscriptionOfferCode)
        case subscriptionPrice(SubscriptionPrice)
        case promotedPurchase(PromotedPurchase)
        case subscriptionAvailability(SubscriptionAvailability)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(SubscriptionLocalization.self) {
                self = .subscriptionLocalization(value)
            } else if let value = try? container.decode(SubscriptionAppStoreReviewScreenshot.self) {
                self = .subscriptionAppStoreReviewScreenshot(value)
            } else if let value = try? container.decode(SubscriptionGroup.self) {
                self = .subscriptionGroup(value)
            } else if let value = try? container.decode(SubscriptionIntroductoryOffer.self) {
                self = .subscriptionIntroductoryOffer(value)
            } else if let value = try? container.decode(SubscriptionPromotionalOffer.self) {
                self = .subscriptionPromotionalOffer(value)
            } else if let value = try? container.decode(SubscriptionOfferCode.self) {
                self = .subscriptionOfferCode(value)
            } else if let value = try? container.decode(SubscriptionPrice.self) {
                self = .subscriptionPrice(value)
            } else if let value = try? container.decode(PromotedPurchase.self) {
                self = .promotedPurchase(value)
            } else if let value = try? container.decode(SubscriptionAvailability.self) {
                self = .subscriptionAvailability(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (SubscriptionLocalization, SubscriptionAppStoreReviewScreenshot, SubscriptionGroup, SubscriptionIntroductoryOffer, SubscriptionPromotionalOffer, SubscriptionOfferCode, SubscriptionPrice, PromotedPurchase, SubscriptionAvailability)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .subscriptionLocalization(let value): try container.encode(value)
            case .subscriptionAppStoreReviewScreenshot(let value): try container.encode(value)
            case .subscriptionGroup(let value): try container.encode(value)
            case .subscriptionIntroductoryOffer(let value): try container.encode(value)
            case .subscriptionPromotionalOffer(let value): try container.encode(value)
            case .subscriptionOfferCode(let value): try container.encode(value)
            case .subscriptionPrice(let value): try container.encode(value)
            case .promotedPurchase(let value): try container.encode(value)
            case .subscriptionAvailability(let value): try container.encode(value)
            }
        }
    }

    public init(data: Subscription, included: [IncludedItem]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
