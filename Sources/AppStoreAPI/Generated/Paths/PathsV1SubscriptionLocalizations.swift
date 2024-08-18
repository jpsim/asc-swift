// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1 {
    public var subscriptionLocalizations: SubscriptionLocalizations {
        SubscriptionLocalizations(path: path + "/subscriptionLocalizations")
    }

    public struct SubscriptionLocalizations {
        /// Path: `/v1/subscriptionLocalizations`
        public let path: String

        public func post(_ body: AppStoreAPI.SubscriptionLocalizationCreateRequest) -> Request<AppStoreAPI.SubscriptionLocalizationResponse> {
            Request(path: path, method: "POST", body: body, id: "subscriptionLocalizations-create_instance")
        }
    }
}
