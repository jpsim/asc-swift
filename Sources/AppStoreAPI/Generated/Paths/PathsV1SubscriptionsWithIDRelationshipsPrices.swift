// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.Subscriptions.WithID.Relationships {
    public var prices: Prices {
        Prices(path: path + "/prices")
    }

    public struct Prices {
        /// Path: `/v1/subscriptions/{id}/relationships/prices`
        public let path: String

        public func get(limit: Int? = nil) -> Request<AppStoreAPI.SubscriptionPricesLinkagesResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(limit), id: "subscriptions_prices_getToManyRelationship")
        }

        private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }

        public func delete(_ body: AppStoreAPI.SubscriptionPricesLinkagesRequest) -> Request<Void> {
            Request(path: path, method: "DELETE", body: body, id: "subscriptions_prices_deleteToManyRelationship")
        }
    }
}
