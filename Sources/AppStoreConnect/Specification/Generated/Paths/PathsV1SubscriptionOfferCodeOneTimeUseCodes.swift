// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var subscriptionOfferCodeOneTimeUseCodes: SubscriptionOfferCodeOneTimeUseCodes {
        SubscriptionOfferCodeOneTimeUseCodes(path: path + "/subscriptionOfferCodeOneTimeUseCodes")
    }

    public struct SubscriptionOfferCodeOneTimeUseCodes {
        /// Path: `/v1/subscriptionOfferCodeOneTimeUseCodes`
        public let path: String

        public func post(_ body: AppStoreConnect.SubscriptionOfferCodeOneTimeUseCodeCreateRequest) -> Request<AppStoreConnect.SubscriptionOfferCodeOneTimeUseCodeResponse> {
            Request(method: "POST", url: path, body: body, id: "subscriptionOfferCodeOneTimeUseCodes-create_instance")
        }
    }
}
