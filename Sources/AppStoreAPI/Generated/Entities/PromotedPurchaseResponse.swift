// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct PromotedPurchaseResponse: Codable, Equatable, Sendable {
    /// PromotedPurchase
    public var data: PromotedPurchase
    public var included: [IncludedItem]?
    public var links: DocumentLinks

    public enum IncludedItem: Codable, Equatable, Sendable {
        case inAppPurchaseV2(InAppPurchaseV2)
        case subscription(Subscription)
        case promotedPurchaseImage(PromotedPurchaseImage)

        public init(from decoder: any Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(InAppPurchaseV2.self) {
                self = .inAppPurchaseV2(value)
            } else if let value = try? container.decode(Subscription.self) {
                self = .subscription(value)
            } else if let value = try? container.decode(PromotedPurchaseImage.self) {
                self = .promotedPurchaseImage(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (InAppPurchaseV2, Subscription, PromotedPurchaseImage)."
                )
            }
        }

        public func encode(to encoder: any Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .inAppPurchaseV2(let value): try container.encode(value)
            case .subscription(let value): try container.encode(value)
            case .promotedPurchaseImage(let value): try container.encode(value)
            }
        }
    }

    public init(data: PromotedPurchase, included: [IncludedItem]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
