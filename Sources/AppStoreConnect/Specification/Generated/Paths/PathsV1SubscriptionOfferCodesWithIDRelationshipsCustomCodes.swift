// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.SubscriptionOfferCodes.WithID.Relationships {
    public var customCodes: CustomCodes {
        CustomCodes(path: path + "/customCodes")
    }

    public struct CustomCodes {
        /// Path: `/v1/subscriptionOfferCodes/{id}/relationships/customCodes`
        public let path: String
    }
}
