// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.AppEncryptionDeclarations.WithID {
    public var app: App {
        App(path: path + "/app")
    }

    public struct App {
        /// Path: `/v1/appEncryptionDeclarations/{id}/app`
        public let path: String

        public func get(fieldsApps: [FieldsApps]? = nil) -> Request<AppStoreAPI.AppWithoutIncludesResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsApps), id: "appEncryptionDeclarations-app-get_to_one_related")
        }

        private func makeGetQuery(_ fieldsApps: [FieldsApps]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsApps, forKey: "fields[apps]", explode: false)
            return encoder.items
        }

        public enum FieldsApps: String, CaseIterable, Codable, Sendable {
            case alternativeDistributionKey
            case analyticsReportRequests
            case appAvailability
            case appClips
            case appCustomProductPages
            case appEncryptionDeclarations
            case appEvents
            case appInfos
            case appPricePoints
            case appPriceSchedule
            case appStoreVersionExperimentsV2
            case appStoreVersions
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
            case gameCenterDetail
            case gameCenterEnabledVersions
            case inAppPurchases
            case inAppPurchasesV2
            case isOrEverWasMadeForKids
            case marketplaceSearchDetail
            case name
            case perfPowerMetrics
            case preOrder
            case preReleaseVersions
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
    }
}
