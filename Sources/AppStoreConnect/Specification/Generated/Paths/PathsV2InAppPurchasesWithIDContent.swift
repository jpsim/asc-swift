// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V2.InAppPurchases.WithID {
    public var content: Content {
        Content(path: path + "/content")
    }

    public struct Content {
        /// Path: `/v2/inAppPurchases/{id}/content`
        public let path: String

        public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect.InAppPurchaseContentResponse> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "inAppPurchases-content-get_to_one_related")
        }

        public struct GetParameters {
            public var fieldsInAppPurchases: [FieldsInAppPurchases]?
            public var fieldsInAppPurchaseContents: [FieldsInAppPurchaseContents]?
            public var include: [Include]?

            public enum FieldsInAppPurchases: String, Codable, CaseIterable {
                case app
                case appStoreReviewScreenshot
                case availableInAllTerritories
                case content
                case contentHosting
                case familySharable
                case iapPriceSchedule
                case inAppPurchaseLocalizations
                case inAppPurchaseType
                case name
                case pricePoints
                case productID = "productId"
                case promotedPurchase
                case reviewNote
                case state
            }

            public enum FieldsInAppPurchaseContents: String, Codable, CaseIterable {
                case fileName
                case fileSize
                case inAppPurchaseV2
                case lastModifiedDate
                case url
            }

            public enum Include: String, Codable, CaseIterable {
                case inAppPurchaseV2
            }

            public init(fieldsInAppPurchases: [FieldsInAppPurchases]? = nil, fieldsInAppPurchaseContents: [FieldsInAppPurchaseContents]? = nil, include: [Include]? = nil) {
                self.fieldsInAppPurchases = fieldsInAppPurchases
                self.fieldsInAppPurchaseContents = fieldsInAppPurchaseContents
                self.include = include
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder(explode: false)
                encoder.encode(fieldsInAppPurchases, forKey: "fields[inAppPurchases]")
                encoder.encode(fieldsInAppPurchaseContents, forKey: "fields[inAppPurchaseContents]")
                encoder.encode(include, forKey: "include")
                return encoder.items
            }
        }
    }
}
