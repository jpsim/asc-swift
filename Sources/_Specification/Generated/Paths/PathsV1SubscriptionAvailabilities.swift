// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var subscriptionAvailabilities: SubscriptionAvailabilities {
        SubscriptionAvailabilities(path: path + "/subscriptionAvailabilities")
    }

    public struct SubscriptionAvailabilities {
        /// Path: `/v1/subscriptionAvailabilities`
        public let path: String

        public func post(_ body: _Specification.SubscriptionAvailabilityCreateRequest) -> Request<_Specification.SubscriptionAvailabilityResponse> {
            Request(method: "POST", url: path, body: body, id: "subscriptionAvailabilities-create_instance")
        }
    }
}
