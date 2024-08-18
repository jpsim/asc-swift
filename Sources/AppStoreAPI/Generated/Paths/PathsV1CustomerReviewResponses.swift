// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1 {
    public var customerReviewResponses: CustomerReviewResponses {
        CustomerReviewResponses(path: path + "/customerReviewResponses")
    }

    public struct CustomerReviewResponses {
        /// Path: `/v1/customerReviewResponses`
        public let path: String

        public func post(_ body: AppStoreAPI.CustomerReviewResponseV1CreateRequest) -> Request<AppStoreAPI.CustomerReviewResponseV1Response> {
            Request(path: path, method: "POST", body: body, id: "customerReviewResponses-create_instance")
        }
    }
}
