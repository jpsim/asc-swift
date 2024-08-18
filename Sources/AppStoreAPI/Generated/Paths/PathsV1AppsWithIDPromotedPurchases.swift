// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.Apps.WithID {
    public var promotedPurchases: PromotedPurchases {
        PromotedPurchases(path: path + "/promotedPurchases")
    }

    public struct PromotedPurchases {
        /// Path: `/v1/apps/{id}/promotedPurchases`
        public let path: String

        public func get(fieldsPromotedPurchases: [FieldsPromotedPurchases]? = nil, fieldsSubscriptions: [FieldsSubscriptions]? = nil, fieldsInAppPurchases: [FieldsInAppPurchases]? = nil, fieldsPromotedPurchaseImages: [FieldsPromotedPurchaseImages]? = nil, limit: Int? = nil, limitPromotionImages: Int? = nil, include: [Include]? = nil) -> Request<AppStoreAPI.PromotedPurchasesResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsPromotedPurchases, fieldsSubscriptions, fieldsInAppPurchases, fieldsPromotedPurchaseImages, limit, limitPromotionImages, include), id: "apps-promotedPurchases-get_to_many_related")
        }

        private func makeGetQuery(_ fieldsPromotedPurchases: [FieldsPromotedPurchases]?, _ fieldsSubscriptions: [FieldsSubscriptions]?, _ fieldsInAppPurchases: [FieldsInAppPurchases]?, _ fieldsPromotedPurchaseImages: [FieldsPromotedPurchaseImages]?, _ limit: Int?, _ limitPromotionImages: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsPromotedPurchases, forKey: "fields[promotedPurchases]")
            encoder.encode(fieldsSubscriptions, forKey: "fields[subscriptions]")
            encoder.encode(fieldsInAppPurchases, forKey: "fields[inAppPurchases]")
            encoder.encode(fieldsPromotedPurchaseImages, forKey: "fields[promotedPurchaseImages]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(limitPromotionImages, forKey: "limit[promotionImages]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsPromotedPurchases: String, CaseIterable, Codable, Sendable {
            case app
            case enabled
            case inAppPurchaseV2
            case promotionImages
            case state
            case subscription
            case visibleForAllUsers
        }

        public enum FieldsSubscriptions: String, CaseIterable, Codable, Sendable {
            case appStoreReviewScreenshot
            case familySharable
            case group
            case groupLevel
            case introductoryOffers
            case name
            case offerCodes
            case pricePoints
            case prices
            case productID = "productId"
            case promotedPurchase
            case promotionalOffers
            case reviewNote
            case state
            case subscriptionAvailability
            case subscriptionLocalizations
            case subscriptionPeriod
        }

        public enum FieldsInAppPurchases: String, CaseIterable, Codable, Sendable {
            case app
            case appStoreReviewScreenshot
            case content
            case contentHosting
            case familySharable
            case iapPriceSchedule
            case inAppPurchaseAvailability
            case inAppPurchaseLocalizations
            case inAppPurchaseType
            case name
            case pricePoints
            case productID = "productId"
            case promotedPurchase
            case reviewNote
            case state
        }

        public enum FieldsPromotedPurchaseImages: String, CaseIterable, Codable, Sendable {
            case assetToken
            case assetType
            case fileName
            case fileSize
            case imageAsset
            case promotedPurchase
            case sourceFileChecksum
            case state
            case uploadOperations
            case uploaded
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case inAppPurchaseV2
            case promotionImages
            case subscription
        }
    }
}
