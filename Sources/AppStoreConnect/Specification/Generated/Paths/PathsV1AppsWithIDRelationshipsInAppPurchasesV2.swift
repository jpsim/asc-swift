// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.Apps.WithID.Relationships {
    public var inAppPurchasesV2: InAppPurchasesV2 {
        InAppPurchasesV2(path: path + "/inAppPurchasesV2")
    }

    public struct InAppPurchasesV2 {
        /// Path: `/v1/apps/{id}/relationships/inAppPurchasesV2`
        public let path: String
    }
}
