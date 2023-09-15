// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V2.InAppPurchases.WithID {
    public var promotedPurchase: PromotedPurchase {
        PromotedPurchase(path: path + "/promotedPurchase")
    }

    public struct PromotedPurchase {
        /// Path: `/v2/inAppPurchases/{id}/promotedPurchase`
        public let path: String

        public func get(fieldsPromotedPurchases: [FieldsPromotedPurchases]? = nil, fieldsSubscriptions: [FieldsSubscriptions]? = nil, fieldsInAppPurchases: [FieldsInAppPurchases]? = nil, fieldsPromotedPurchaseImages: [FieldsPromotedPurchaseImages]? = nil, limitPromotionImages: Int? = nil, include: [Include]? = nil) -> Request<_Specification.PromotedPurchaseResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsPromotedPurchases, fieldsSubscriptions, fieldsInAppPurchases, fieldsPromotedPurchaseImages, limitPromotionImages, include), id: "inAppPurchasesV2-promotedPurchase-get_to_one_related")
        }

        private func makeGetQuery(_ fieldsPromotedPurchases: [FieldsPromotedPurchases]?, _ fieldsSubscriptions: [FieldsSubscriptions]?, _ fieldsInAppPurchases: [FieldsInAppPurchases]?, _ fieldsPromotedPurchaseImages: [FieldsPromotedPurchaseImages]?, _ limitPromotionImages: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsPromotedPurchases, forKey: "fields[promotedPurchases]")
            encoder.encode(fieldsSubscriptions, forKey: "fields[subscriptions]")
            encoder.encode(fieldsInAppPurchases, forKey: "fields[inAppPurchases]")
            encoder.encode(fieldsPromotedPurchaseImages, forKey: "fields[promotedPurchaseImages]")
            encoder.encode(limitPromotionImages, forKey: "limit[promotionImages]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsPromotedPurchases: String, Codable, CaseIterable {
            case app
            case enabled
            case inAppPurchaseV2
            case promotionImages
            case state
            case subscription
            case visibleForAllUsers
        }

        public enum FieldsSubscriptions: String, Codable, CaseIterable {
            case appStoreReviewScreenshot
            case availableInAllTerritories
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

        public enum FieldsInAppPurchases: String, Codable, CaseIterable {
            case app
            case appStoreReviewScreenshot
            case availableInAllTerritories
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

        public enum FieldsPromotedPurchaseImages: String, Codable, CaseIterable {
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

        public enum Include: String, Codable, CaseIterable {
            case inAppPurchaseV2
            case promotionImages
            case subscription
        }
    }
}
