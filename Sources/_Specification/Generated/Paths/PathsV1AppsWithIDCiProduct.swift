// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.Apps.WithID {
    public var ciProduct: CiProduct {
        CiProduct(path: path + "/ciProduct")
    }

    public struct CiProduct {
        /// Path: `/v1/apps/{id}/ciProduct`
        public let path: String

        public func get(fieldsCiProducts: [FieldsCiProducts]? = nil, fieldsApps: [FieldsApps]? = nil, fieldsScmRepositories: [FieldsScmRepositories]? = nil, fieldsBundleIDs: [FieldsBundleIDs]? = nil, limitPrimaryRepositories: Int? = nil, include: [Include]? = nil) -> Request<_Specification.CiProductResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsCiProducts, fieldsApps, fieldsScmRepositories, fieldsBundleIDs, limitPrimaryRepositories, include), id: "apps-ciProduct-get_to_one_related")
        }

        private func makeGetQuery(_ fieldsCiProducts: [FieldsCiProducts]?, _ fieldsApps: [FieldsApps]?, _ fieldsScmRepositories: [FieldsScmRepositories]?, _ fieldsBundleIDs: [FieldsBundleIDs]?, _ limitPrimaryRepositories: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsCiProducts, forKey: "fields[ciProducts]")
            encoder.encode(fieldsApps, forKey: "fields[apps]")
            encoder.encode(fieldsScmRepositories, forKey: "fields[scmRepositories]")
            encoder.encode(fieldsBundleIDs, forKey: "fields[bundleIds]")
            encoder.encode(limitPrimaryRepositories, forKey: "limit[primaryRepositories]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsCiProducts: String, Codable, CaseIterable {
            case additionalRepositories
            case app
            case buildRuns
            case bundleID = "bundleId"
            case createdDate
            case name
            case primaryRepositories
            case productType
            case workflows
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

        public enum FieldsScmRepositories: String, Codable, CaseIterable {
            case defaultBranch
            case gitReferences
            case httpCloneURL = "httpCloneUrl"
            case lastAccessedDate
            case ownerName
            case pullRequests
            case repositoryName
            case scmProvider
            case sshCloneURL = "sshCloneUrl"
        }

        public enum FieldsBundleIDs: String, Codable, CaseIterable {
            case app
            case bundleIDCapabilities = "bundleIdCapabilities"
            case identifier
            case name
            case platform
            case profiles
            case seedID = "seedId"
        }

        public enum Include: String, Codable, CaseIterable {
            case app
            case bundleID = "bundleId"
            case primaryRepositories
        }
    }
}
