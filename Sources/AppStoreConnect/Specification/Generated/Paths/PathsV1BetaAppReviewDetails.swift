// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var betaAppReviewDetails: BetaAppReviewDetails {
        BetaAppReviewDetails(path: path + "/betaAppReviewDetails")
    }

    public struct BetaAppReviewDetails {
        /// Path: `/v1/betaAppReviewDetails`
        public let path: String

        public func get(parameters: GetParameters) -> Request<AppStoreConnect.BetaAppReviewDetailsResponse> {
            Request(method: "GET", url: path, query: parameters.asQuery, id: "betaAppReviewDetails-get_collection")
        }

        public struct GetParameters {
            public var filterApp: [String]
            public var fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails]?
            public var limit: Int?
            public var include: [Include]?
            public var fieldsApps: [FieldsApps]?

            public enum FieldsBetaAppReviewDetails: String, Codable, CaseIterable {
                case app
                case contactEmail
                case contactFirstName
                case contactLastName
                case contactPhone
                case demoAccountName
                case demoAccountPassword
                case demoAccountRequired
                case notes
            }

            public enum Include: String, Codable, CaseIterable {
                case app
            }

            public enum FieldsApps: String, Codable, CaseIterable {
                case appClips
                case appCustomProductPages
                case appEvents
                case appInfos
                case appStoreVersions
                case availableInNewTerritories
                case availableTerritories
                case betaAppLocalizations
                case betaAppReviewDetail
                case betaGroups
                case betaLicenseAgreement
                case betaTesters
                case builds
                case bundleID = "bundleId"
                case ciProduct
                case contentRightsDeclaration
                case customerReviews
                case endUserLicenseAgreement
                case gameCenterEnabledVersions
                case inAppPurchases
                case inAppPurchasesV2
                case isOrEverWasMadeForKids
                case name
                case perfPowerMetrics
                case preOrder
                case preReleaseVersions
                case pricePoints
                case prices
                case primaryLocale
                case promotedPurchases
                case reviewSubmissions
                case sku
                case subscriptionGracePeriod
                case subscriptionGroups
                case subscriptionStatusURL = "subscriptionStatusUrl"
                case subscriptionStatusURLForSandbox = "subscriptionStatusUrlForSandbox"
                case subscriptionStatusURLVersion = "subscriptionStatusUrlVersion"
                case subscriptionStatusURLVersionForSandbox = "subscriptionStatusUrlVersionForSandbox"
            }

            public init(filterApp: [String], fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsApps: [FieldsApps]? = nil) {
                self.filterApp = filterApp
                self.fieldsBetaAppReviewDetails = fieldsBetaAppReviewDetails
                self.limit = limit
                self.include = include
                self.fieldsApps = fieldsApps
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder(explode: false)
                encoder.encode(filterApp, forKey: "filter[app]")
                encoder.encode(fieldsBetaAppReviewDetails, forKey: "fields[betaAppReviewDetails]")
                encoder.encode(limit, forKey: "limit")
                encoder.encode(include, forKey: "include")
                encoder.encode(fieldsApps, forKey: "fields[apps]")
                return encoder.items
            }
        }
    }
}
