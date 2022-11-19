// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.SubscriptionPricePoints.WithID.Relationships {
    public var equalizations: Equalizations {
        Equalizations(path: path + "/equalizations")
    }

    public struct Equalizations {
        /// Path: `/v1/subscriptionPricePoints/{id}/relationships/equalizations`
        public let path: String
    }
}
