// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.InAppPurchasePriceSchedules.WithID.Relationships {
    public var automaticPrices: AutomaticPrices {
        AutomaticPrices(path: path + "/automaticPrices")
    }

    public struct AutomaticPrices {
        /// Path: `/v1/inAppPurchasePriceSchedules/{id}/relationships/automaticPrices`
        public let path: String
    }
}
