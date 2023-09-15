// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var betaAppLocalizations: BetaAppLocalizations {
        BetaAppLocalizations(path: path + "/betaAppLocalizations")
    }

    public struct BetaAppLocalizations {
        /// Path: `/v1/betaAppLocalizations`
        public let path: String

        public func get(filterLocale: [String]? = nil, filterApp: [String]? = nil, fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsApps: [FieldsApps]? = nil) -> Request<_Specification.BetaAppLocalizationsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterLocale, filterApp, fieldsBetaAppLocalizations, limit, include, fieldsApps), id: "betaAppLocalizations-get_collection")
        }

        private func makeGetQuery(_ filterLocale: [String]?, _ filterApp: [String]?, _ fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations]?, _ limit: Int?, _ include: [Include]?, _ fieldsApps: [FieldsApps]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterLocale, forKey: "filter[locale]")
            encoder.encode(filterApp, forKey: "filter[app]")
            encoder.encode(fieldsBetaAppLocalizations, forKey: "fields[betaAppLocalizations]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsApps, forKey: "fields[apps]")
            return encoder.items
        }

        public enum FieldsBetaAppLocalizations: String, Codable, CaseIterable {
            case app
            case description
            case feedbackEmail
            case locale
            case marketingURL = "marketingUrl"
            case privacyPolicyURL = "privacyPolicyUrl"
            case tvOsPrivacyPolicy
        }

        public enum Include: String, Codable, CaseIterable {
            case app
        }

        public enum FieldsApps: String, Codable, CaseIterable {
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
            case gameCenterDetail
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

        public func post(_ body: _Specification.BetaAppLocalizationCreateRequest) -> Request<_Specification.BetaAppLocalizationResponse> {
            Request(path: path, method: "POST", body: body, id: "betaAppLocalizations-create_instance")
        }
    }
}
