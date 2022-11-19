// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var subscriptionSubmissions: SubscriptionSubmissions {
        SubscriptionSubmissions(path: path + "/subscriptionSubmissions")
    }

    public struct SubscriptionSubmissions {
        /// Path: `/v1/subscriptionSubmissions`
        public let path: String

        public func post(_ body: AppStoreConnect.SubscriptionSubmissionCreateRequest) -> Request<AppStoreConnect.SubscriptionSubmissionResponse> {
            Request(method: "POST", url: path, body: body, id: "subscriptionSubmissions-create_instance")
        }
    }
}
