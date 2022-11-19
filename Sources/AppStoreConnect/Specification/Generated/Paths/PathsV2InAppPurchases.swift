// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V2 {
    public var inAppPurchases: InAppPurchases {
        InAppPurchases(path: path + "/inAppPurchases")
    }

    public struct InAppPurchases {
        /// Path: `/v2/inAppPurchases`
        public let path: String

        public func post(_ body: AppStoreConnect.InAppPurchaseV2CreateRequest) -> Request<AppStoreConnect.InAppPurchaseV2Response> {
            Request(method: "POST", url: path, body: body, id: "inAppPurchases-create_instance")
        }
    }
}
