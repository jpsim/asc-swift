// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.SubscriptionOfferCodeOneTimeUseCodes.WithID {
    public var values: Values {
        Values(path: path + "/values")
    }

    public struct Values {
        /// Path: `/v1/subscriptionOfferCodeOneTimeUseCodes/{id}/values`
        public let path: String

        public var get: Request<String> {
            Request(path: path, method: "GET", id: "subscriptionOfferCodeOneTimeUseCodes-values-get_to_one_related")
        }
    }
}
