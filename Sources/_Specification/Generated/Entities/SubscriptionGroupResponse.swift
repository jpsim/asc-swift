// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct SubscriptionGroupResponse: Codable, Equatable {
    /// SubscriptionGroup
    public var data: SubscriptionGroup
    public var included: [IncludedItem]?
    public var links: DocumentLinks

    public enum IncludedItem: Codable, Equatable {
        case subscription(Subscription)
        case subscriptionGroupLocalization(SubscriptionGroupLocalization)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(Subscription.self) {
                self = .subscription(value)
            } else if let value = try? container.decode(SubscriptionGroupLocalization.self) {
                self = .subscriptionGroupLocalization(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (Subscription, SubscriptionGroupLocalization)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .subscription(let value): try container.encode(value)
            case .subscriptionGroupLocalization(let value): try container.encode(value)
            }
        }
    }

    public init(data: SubscriptionGroup, included: [IncludedItem]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
