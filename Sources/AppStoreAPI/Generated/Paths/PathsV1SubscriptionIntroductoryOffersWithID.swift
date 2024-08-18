// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.SubscriptionIntroductoryOffers {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/subscriptionIntroductoryOffers/{id}`
        public let path: String

        public func patch(_ body: AppStoreAPI.SubscriptionIntroductoryOfferUpdateRequest) -> Request<AppStoreAPI.SubscriptionIntroductoryOfferResponse> {
            Request(path: path, method: "PATCH", body: body, id: "subscriptionIntroductoryOffers-update_instance")
        }

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "subscriptionIntroductoryOffers-delete_instance")
        }
    }
}
