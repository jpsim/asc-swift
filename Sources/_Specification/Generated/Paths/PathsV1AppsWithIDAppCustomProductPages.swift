// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.Apps.WithID {
    public var appCustomProductPages: AppCustomProductPages {
        AppCustomProductPages(path: path + "/appCustomProductPages")
    }

    public struct AppCustomProductPages {
        /// Path: `/v1/apps/{id}/appCustomProductPages`
        public let path: String

        public func get(filterVisible: [String]? = nil, fieldsAppCustomProductPages: [FieldsAppCustomProductPages]? = nil, fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions]? = nil, fieldsApps: [FieldsApps]? = nil, limit: Int? = nil, limitAppCustomProductPageVersions: Int? = nil, include: [Include]? = nil) -> Request<_Specification.AppCustomProductPagesResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(filterVisible, fieldsAppCustomProductPages, fieldsAppCustomProductPageVersions, fieldsApps, limit, limitAppCustomProductPageVersions, include), id: "apps-appCustomProductPages-get_to_many_related")
        }

        private func makeGetQuery(_ filterVisible: [String]?, _ fieldsAppCustomProductPages: [FieldsAppCustomProductPages]?, _ fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions]?, _ fieldsApps: [FieldsApps]?, _ limit: Int?, _ limitAppCustomProductPageVersions: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterVisible, forKey: "filter[visible]")
            encoder.encode(fieldsAppCustomProductPages, forKey: "fields[appCustomProductPages]")
            encoder.encode(fieldsAppCustomProductPageVersions, forKey: "fields[appCustomProductPageVersions]")
            encoder.encode(fieldsApps, forKey: "fields[apps]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(limitAppCustomProductPageVersions, forKey: "limit[appCustomProductPageVersions]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsAppCustomProductPages: String, Codable, CaseIterable {
            case app
            case appCustomProductPageVersions
            case appStoreVersionTemplate
            case customProductPageTemplate
            case name
            case url
            case visible
        }

        public enum FieldsAppCustomProductPageVersions: String, Codable, CaseIterable {
            case appCustomProductPage
            case appCustomProductPageLocalizations
            case state
            case version
        }

        public enum FieldsApps: String, Codable, CaseIterable {
            case appAvailability
            case appClips
            case appCustomProductPages
            case appEvents
            case appInfos
            case appPricePoints
            case appPriceSchedule
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

        public enum Include: String, Codable, CaseIterable {
            case app
            case appCustomProductPageVersions
        }
    }
}
