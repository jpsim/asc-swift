// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.UserInvitations {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/userInvitations/{id}`
        public let path: String

        public func get(fieldsUserInvitations: [FieldsUserInvitations]? = nil, include: [Include]? = nil, fieldsApps: [FieldsApps]? = nil, limitVisibleApps: Int? = nil) -> Request<_Specification.UserInvitationResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsUserInvitations, include, fieldsApps, limitVisibleApps), id: "userInvitations-get_instance")
        }

        private func makeGetQuery(_ fieldsUserInvitations: [FieldsUserInvitations]?, _ include: [Include]?, _ fieldsApps: [FieldsApps]?, _ limitVisibleApps: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsUserInvitations, forKey: "fields[userInvitations]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsApps, forKey: "fields[apps]")
            encoder.encode(limitVisibleApps, forKey: "limit[visibleApps]")
            return encoder.items
        }

        public enum FieldsUserInvitations: String, CaseIterable, Codable, Sendable {
            case allAppsVisible
            case email
            case expirationDate
            case firstName
            case lastName
            case provisioningAllowed
            case roles
            case visibleApps
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case visibleApps
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
            case marketplaceSearchDetail
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

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "userInvitations-delete_instance")
        }
    }
}
