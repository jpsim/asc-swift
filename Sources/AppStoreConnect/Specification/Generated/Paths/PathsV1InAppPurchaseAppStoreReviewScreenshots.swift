// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var inAppPurchaseAppStoreReviewScreenshots: InAppPurchaseAppStoreReviewScreenshots {
        InAppPurchaseAppStoreReviewScreenshots(path: path + "/inAppPurchaseAppStoreReviewScreenshots")
    }

    public struct InAppPurchaseAppStoreReviewScreenshots {
        /// Path: `/v1/inAppPurchaseAppStoreReviewScreenshots`
        public let path: String

        public func post(_ body: AppStoreConnect.InAppPurchaseAppStoreReviewScreenshotCreateRequest) -> Request<AppStoreConnect.InAppPurchaseAppStoreReviewScreenshotResponse> {
            Request(method: "POST", url: path, body: body, id: "inAppPurchaseAppStoreReviewScreenshots-create_instance")
        }
    }
}
