// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1 {
    public var subscriptionOfferCodes: SubscriptionOfferCodes {
        SubscriptionOfferCodes(path: path + "/subscriptionOfferCodes")
    }

    public struct SubscriptionOfferCodes {
        /// Path: `/v1/subscriptionOfferCodes`
        public let path: String

        public func post(_ body: AppStoreAPI.SubscriptionOfferCodeCreateRequest) -> Request<AppStoreAPI.SubscriptionOfferCodeResponse> {
            Request(path: path, method: "POST", body: body, id: "subscriptionOfferCodes-create_instance")
        }
    }
}
