// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.Apps.WithID {
    public var reviewSubmissions: ReviewSubmissions {
        ReviewSubmissions(path: path + "/reviewSubmissions")
    }

    public struct ReviewSubmissions {
        /// Path: `/v1/apps/{id}/reviewSubmissions`
        public let path: String

        public func get(filterPlatform: [FilterPlatform]? = nil, filterState: [FilterState]? = nil, fieldsReviewSubmissionItems: [FieldsReviewSubmissionItems]? = nil, fieldsActors: [FieldsActors]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions]? = nil, fieldsApps: [FieldsApps]? = nil, fieldsReviewSubmissions: [FieldsReviewSubmissions]? = nil, limit: Int? = nil, limitItems: Int? = nil, include: [Include]? = nil) -> Request<_Specification.ReviewSubmissionsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterPlatform, filterState, fieldsReviewSubmissionItems, fieldsActors, fieldsAppStoreVersions, fieldsApps, fieldsReviewSubmissions, limit, limitItems, include), id: "apps-reviewSubmissions-get_to_many_related")
        }

        private func makeGetQuery(_ filterPlatform: [FilterPlatform]?, _ filterState: [FilterState]?, _ fieldsReviewSubmissionItems: [FieldsReviewSubmissionItems]?, _ fieldsActors: [FieldsActors]?, _ fieldsAppStoreVersions: [FieldsAppStoreVersions]?, _ fieldsApps: [FieldsApps]?, _ fieldsReviewSubmissions: [FieldsReviewSubmissions]?, _ limit: Int?, _ limitItems: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterPlatform, forKey: "filter[platform]")
            encoder.encode(filterState, forKey: "filter[state]")
            encoder.encode(fieldsReviewSubmissionItems, forKey: "fields[reviewSubmissionItems]")
            encoder.encode(fieldsActors, forKey: "fields[actors]")
            encoder.encode(fieldsAppStoreVersions, forKey: "fields[appStoreVersions]")
            encoder.encode(fieldsApps, forKey: "fields[apps]")
            encoder.encode(fieldsReviewSubmissions, forKey: "fields[reviewSubmissions]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(limitItems, forKey: "limit[items]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FilterPlatform: String, CaseIterable, Codable, Sendable {
            case ios = "IOS"
            case macOs = "MAC_OS"
            case tvOs = "TV_OS"
            case visionOs = "VISION_OS"
        }

        public enum FilterState: String, CaseIterable, Codable, Sendable {
            case readyForReview = "READY_FOR_REVIEW"
            case waitingForReview = "WAITING_FOR_REVIEW"
            case inReview = "IN_REVIEW"
            case unresolvedIssues = "UNRESOLVED_ISSUES"
            case canceling = "CANCELING"
            case completing = "COMPLETING"
            case complete = "COMPLETE"
        }

        public enum FieldsReviewSubmissionItems: String, CaseIterable, Codable, Sendable {
            case appCustomProductPageVersion
            case appEvent
            case appStoreVersion
            case appStoreVersionExperiment
            case appStoreVersionExperimentV2
            case removed
            case resolved
            case reviewSubmission
            case state
        }

        public enum FieldsActors: String, CaseIterable, Codable, Sendable {
            case actorType
            case apiKeyID = "apiKeyId"
            case userEmail
            case userFirstName
            case userLastName
        }

        public enum FieldsAppStoreVersions: String, CaseIterable, Codable, Sendable {
            case ageRatingDeclaration
            case alternativeDistributionPackage
            case app
            case appClipDefaultExperience
            case appStoreReviewDetail
            case appStoreState
            case appStoreVersionExperiments
            case appStoreVersionExperimentsV2
            case appStoreVersionLocalizations
            case appStoreVersionPhasedRelease
            case appStoreVersionSubmission
            case appVersionState
            case build
            case copyright
            case createdDate
            case customerReviews
            case downloadable
            case earliestReleaseDate
            case platform
            case releaseType
            case reviewType
            case routingAppCoverage
            case versionString
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

        public enum FieldsReviewSubmissions: String, CaseIterable, Codable, Sendable {
            case app
            case appStoreVersionForReview
            case canceled
            case items
            case lastUpdatedByActor
            case platform
            case state
            case submitted
            case submittedByActor
            case submittedDate
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case app
            case appStoreVersionForReview
            case items
            case lastUpdatedByActor
            case submittedByActor
        }
    }
}
