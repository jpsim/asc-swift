// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.SubscriptionPromotionalOffers {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/subscriptionPromotionalOffers/{id}`
        public let path: String

        public func get(fieldsSubscriptionPromotionalOffers: [FieldsSubscriptionPromotionalOffers]? = nil, include: [Include]? = nil, fieldsSubscriptionPromotionalOfferPrices: [FieldsSubscriptionPromotionalOfferPrices]? = nil, limitPrices: Int? = nil) -> Request<_Specification.SubscriptionPromotionalOfferResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsSubscriptionPromotionalOffers, include, fieldsSubscriptionPromotionalOfferPrices, limitPrices), id: "subscriptionPromotionalOffers-get_instance")
        }

        private func makeGetQuery(_ fieldsSubscriptionPromotionalOffers: [FieldsSubscriptionPromotionalOffers]?, _ include: [Include]?, _ fieldsSubscriptionPromotionalOfferPrices: [FieldsSubscriptionPromotionalOfferPrices]?, _ limitPrices: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsSubscriptionPromotionalOffers, forKey: "fields[subscriptionPromotionalOffers]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsSubscriptionPromotionalOfferPrices, forKey: "fields[subscriptionPromotionalOfferPrices]")
            encoder.encode(limitPrices, forKey: "limit[prices]")
            return encoder.items
        }

        public enum FieldsSubscriptionPromotionalOffers: String, CaseIterable, Codable, Sendable {
            case duration
            case name
            case numberOfPeriods
            case offerCode
            case offerMode
            case prices
            case subscription
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case prices
            case subscription
        }

        public enum FieldsSubscriptionPromotionalOfferPrices: String, CaseIterable, Codable, Sendable {
            case subscriptionPricePoint
            case territory
        }

        public func patch(_ body: _Specification.SubscriptionPromotionalOfferUpdateRequest) -> Request<_Specification.SubscriptionPromotionalOfferResponse> {
            Request(path: path, method: "PATCH", body: body, id: "subscriptionPromotionalOffers-update_instance")
        }

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "subscriptionPromotionalOffers-delete_instance")
        }
    }
}
