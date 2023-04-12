// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct SubscriptionAvailabilityResponse: Codable, Hashable {
    /// SubscriptionAvailability
    public var data: SubscriptionAvailability
    public var included: [IncludedItem]?
    public var links: DocumentLinks

    public enum IncludedItem: Codable, Hashable {
        case subscription(Subscription)
        case territory(Territory)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(Subscription.self) {
                self = .subscription(value)
            } else if let value = try? container.decode(Territory.self) {
                self = .territory(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (Subscription, Territory)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .subscription(let value): try container.encode(value)
            case .territory(let value): try container.encode(value)
            }
        }
    }

    public init(data: SubscriptionAvailability, included: [IncludedItem]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
