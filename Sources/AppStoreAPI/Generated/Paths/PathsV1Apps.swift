// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1 {
    public var apps: Apps {
        Apps(path: path + "/apps")
    }

    public struct Apps {
        /// Path: `/v1/apps`
        public let path: String

        public func get(filterAppStoreVersionsAppStoreState: [FilterAppStoreVersionsAppStoreState]? = nil, filterAppStoreVersionsAppVersionState: [FilterAppStoreVersionsAppVersionState]? = nil, filterAppStoreVersionsPlatform: [FilterAppStoreVersionsPlatform]? = nil, filterBundleID: [String]? = nil, filterName: [String]? = nil, filterSku: [String]? = nil, filterAppStoreVersions: [String]? = nil, filterID: [String]? = nil, isExistsGameCenterEnabledVersions: Bool? = nil, sort: [Sort]? = nil, fieldsApps: [FieldsApps]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails]? = nil, fieldsAppPriceSchedules: [FieldsAppPriceSchedules]? = nil, fieldsCiProducts: [FieldsCiProducts]? = nil, fieldsAlternativeDistributionKeys: [FieldsAlternativeDistributionKeys]? = nil, fieldsReviewSubmissions: [FieldsReviewSubmissions]? = nil, fieldsBetaGroups: [FieldsBetaGroups]? = nil, fieldsPromotedPurchases: [FieldsPromotedPurchases]? = nil, fieldsAppAvailabilities: [FieldsAppAvailabilities]? = nil, fieldsCustomerReviews: [FieldsCustomerReviews]? = nil, fieldsAppEvents: [FieldsAppEvents]? = nil, fieldsBuilds: [FieldsBuilds]? = nil, fieldsBetaLicenseAgreements: [FieldsBetaLicenseAgreements]? = nil, fieldsMarketplaceSearchDetails: [FieldsMarketplaceSearchDetails]? = nil, fieldsAppClips: [FieldsAppClips]? = nil, fieldsAppInfos: [FieldsAppInfos]? = nil, fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints]? = nil, fieldsInAppPurchases: [FieldsInAppPurchases]? = nil, fieldsPreReleaseVersions: [FieldsPreReleaseVersions]? = nil, fieldsSubscriptionGroups: [FieldsSubscriptionGroups]? = nil, fieldsAnalyticsReportRequests: [FieldsAnalyticsReportRequests]? = nil, fieldsAppPreOrders: [FieldsAppPreOrders]? = nil, fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments]? = nil, fieldsGameCenterEnabledVersions: [FieldsGameCenterEnabledVersions]? = nil, fieldsSubscriptionGracePeriods: [FieldsSubscriptionGracePeriods]? = nil, fieldsEndUserLicenseAgreements: [FieldsEndUserLicenseAgreements]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions]? = nil, fieldsAppCustomProductPages: [FieldsAppCustomProductPages]? = nil, fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations]? = nil, fieldsPerfPowerMetrics: [FieldsPerfPowerMetrics]? = nil, limitAppClips: Int? = nil, limitAppCustomProductPages: Int? = nil, limitAppEncryptionDeclarations: Int? = nil, limitAppEvents: Int? = nil, limitAppInfos: Int? = nil, limitAppStoreVersionExperimentsV2: Int? = nil, limitAppStoreVersions: Int? = nil, limitBetaAppLocalizations: Int? = nil, limitBetaGroups: Int? = nil, limitBuilds: Int? = nil, limitGameCenterEnabledVersions: Int? = nil, limitInAppPurchases: Int? = nil, limitInAppPurchasesV2: Int? = nil, limitPreReleaseVersions: Int? = nil, limitPromotedPurchases: Int? = nil, limitReviewSubmissions: Int? = nil, limitSubscriptionGroups: Int? = nil) -> Request<AppStoreAPI.AppsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterAppStoreVersionsAppStoreState, filterAppStoreVersionsAppVersionState, filterAppStoreVersionsPlatform, filterBundleID, filterName, filterSku, filterAppStoreVersions, filterID, isExistsGameCenterEnabledVersions, sort, fieldsApps, limit, include, fieldsBetaAppReviewDetails, fieldsGameCenterDetails, fieldsAppPriceSchedules, fieldsCiProducts, fieldsAlternativeDistributionKeys, fieldsReviewSubmissions, fieldsBetaGroups, fieldsPromotedPurchases, fieldsAppAvailabilities, fieldsCustomerReviews, fieldsAppEvents, fieldsBuilds, fieldsBetaLicenseAgreements, fieldsMarketplaceSearchDetails, fieldsAppClips, fieldsAppInfos, fieldsBetaAppLocalizations, fieldsAppPricePoints, fieldsInAppPurchases, fieldsPreReleaseVersions, fieldsSubscriptionGroups, fieldsAnalyticsReportRequests, fieldsAppPreOrders, fieldsAppStoreVersionExperiments, fieldsGameCenterEnabledVersions, fieldsSubscriptionGracePeriods, fieldsEndUserLicenseAgreements, fieldsAppStoreVersions, fieldsAppCustomProductPages, fieldsAppEncryptionDeclarations, fieldsPerfPowerMetrics, limitAppClips, limitAppCustomProductPages, limitAppEncryptionDeclarations, limitAppEvents, limitAppInfos, limitAppStoreVersionExperimentsV2, limitAppStoreVersions, limitBetaAppLocalizations, limitBetaGroups, limitBuilds, limitGameCenterEnabledVersions, limitInAppPurchases, limitInAppPurchasesV2, limitPreReleaseVersions, limitPromotedPurchases, limitReviewSubmissions, limitSubscriptionGroups), id: "apps-get_collection")
        }

        private func makeGetQuery(_ filterAppStoreVersionsAppStoreState: [FilterAppStoreVersionsAppStoreState]?, _ filterAppStoreVersionsAppVersionState: [FilterAppStoreVersionsAppVersionState]?, _ filterAppStoreVersionsPlatform: [FilterAppStoreVersionsPlatform]?, _ filterBundleID: [String]?, _ filterName: [String]?, _ filterSku: [String]?, _ filterAppStoreVersions: [String]?, _ filterID: [String]?, _ isExistsGameCenterEnabledVersions: Bool?, _ sort: [Sort]?, _ fieldsApps: [FieldsApps]?, _ limit: Int?, _ include: [Include]?, _ fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails]?, _ fieldsGameCenterDetails: [FieldsGameCenterDetails]?, _ fieldsAppPriceSchedules: [FieldsAppPriceSchedules]?, _ fieldsCiProducts: [FieldsCiProducts]?, _ fieldsAlternativeDistributionKeys: [FieldsAlternativeDistributionKeys]?, _ fieldsReviewSubmissions: [FieldsReviewSubmissions]?, _ fieldsBetaGroups: [FieldsBetaGroups]?, _ fieldsPromotedPurchases: [FieldsPromotedPurchases]?, _ fieldsAppAvailabilities: [FieldsAppAvailabilities]?, _ fieldsCustomerReviews: [FieldsCustomerReviews]?, _ fieldsAppEvents: [FieldsAppEvents]?, _ fieldsBuilds: [FieldsBuilds]?, _ fieldsBetaLicenseAgreements: [FieldsBetaLicenseAgreements]?, _ fieldsMarketplaceSearchDetails: [FieldsMarketplaceSearchDetails]?, _ fieldsAppClips: [FieldsAppClips]?, _ fieldsAppInfos: [FieldsAppInfos]?, _ fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations]?, _ fieldsAppPricePoints: [FieldsAppPricePoints]?, _ fieldsInAppPurchases: [FieldsInAppPurchases]?, _ fieldsPreReleaseVersions: [FieldsPreReleaseVersions]?, _ fieldsSubscriptionGroups: [FieldsSubscriptionGroups]?, _ fieldsAnalyticsReportRequests: [FieldsAnalyticsReportRequests]?, _ fieldsAppPreOrders: [FieldsAppPreOrders]?, _ fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments]?, _ fieldsGameCenterEnabledVersions: [FieldsGameCenterEnabledVersions]?, _ fieldsSubscriptionGracePeriods: [FieldsSubscriptionGracePeriods]?, _ fieldsEndUserLicenseAgreements: [FieldsEndUserLicenseAgreements]?, _ fieldsAppStoreVersions: [FieldsAppStoreVersions]?, _ fieldsAppCustomProductPages: [FieldsAppCustomProductPages]?, _ fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations]?, _ fieldsPerfPowerMetrics: [FieldsPerfPowerMetrics]?, _ limitAppClips: Int?, _ limitAppCustomProductPages: Int?, _ limitAppEncryptionDeclarations: Int?, _ limitAppEvents: Int?, _ limitAppInfos: Int?, _ limitAppStoreVersionExperimentsV2: Int?, _ limitAppStoreVersions: Int?, _ limitBetaAppLocalizations: Int?, _ limitBetaGroups: Int?, _ limitBuilds: Int?, _ limitGameCenterEnabledVersions: Int?, _ limitInAppPurchases: Int?, _ limitInAppPurchasesV2: Int?, _ limitPreReleaseVersions: Int?, _ limitPromotedPurchases: Int?, _ limitReviewSubmissions: Int?, _ limitSubscriptionGroups: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterAppStoreVersionsAppStoreState, forKey: "filter[appStoreVersions.appStoreState]")
            encoder.encode(filterAppStoreVersionsAppVersionState, forKey: "filter[appStoreVersions.appVersionState]")
            encoder.encode(filterAppStoreVersionsPlatform, forKey: "filter[appStoreVersions.platform]")
            encoder.encode(filterBundleID, forKey: "filter[bundleId]")
            encoder.encode(filterName, forKey: "filter[name]")
            encoder.encode(filterSku, forKey: "filter[sku]")
            encoder.encode(filterAppStoreVersions, forKey: "filter[appStoreVersions]")
            encoder.encode(filterID, forKey: "filter[id]")
            encoder.encode(isExistsGameCenterEnabledVersions, forKey: "exists[gameCenterEnabledVersions]")
            encoder.encode(sort, forKey: "sort")
            encoder.encode(fieldsApps, forKey: "fields[apps]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsBetaAppReviewDetails, forKey: "fields[betaAppReviewDetails]")
            encoder.encode(fieldsGameCenterDetails, forKey: "fields[gameCenterDetails]")
            encoder.encode(fieldsAppPriceSchedules, forKey: "fields[appPriceSchedules]")
            encoder.encode(fieldsCiProducts, forKey: "fields[ciProducts]")
            encoder.encode(fieldsAlternativeDistributionKeys, forKey: "fields[alternativeDistributionKeys]")
            encoder.encode(fieldsReviewSubmissions, forKey: "fields[reviewSubmissions]")
            encoder.encode(fieldsBetaGroups, forKey: "fields[betaGroups]")
            encoder.encode(fieldsPromotedPurchases, forKey: "fields[promotedPurchases]")
            encoder.encode(fieldsAppAvailabilities, forKey: "fields[appAvailabilities]")
            encoder.encode(fieldsCustomerReviews, forKey: "fields[customerReviews]")
            encoder.encode(fieldsAppEvents, forKey: "fields[appEvents]")
            encoder.encode(fieldsBuilds, forKey: "fields[builds]")
            encoder.encode(fieldsBetaLicenseAgreements, forKey: "fields[betaLicenseAgreements]")
            encoder.encode(fieldsMarketplaceSearchDetails, forKey: "fields[marketplaceSearchDetails]")
            encoder.encode(fieldsAppClips, forKey: "fields[appClips]")
            encoder.encode(fieldsAppInfos, forKey: "fields[appInfos]")
            encoder.encode(fieldsBetaAppLocalizations, forKey: "fields[betaAppLocalizations]")
            encoder.encode(fieldsAppPricePoints, forKey: "fields[appPricePoints]")
            encoder.encode(fieldsInAppPurchases, forKey: "fields[inAppPurchases]")
            encoder.encode(fieldsPreReleaseVersions, forKey: "fields[preReleaseVersions]")
            encoder.encode(fieldsSubscriptionGroups, forKey: "fields[subscriptionGroups]")
            encoder.encode(fieldsAnalyticsReportRequests, forKey: "fields[analyticsReportRequests]")
            encoder.encode(fieldsAppPreOrders, forKey: "fields[appPreOrders]")
            encoder.encode(fieldsAppStoreVersionExperiments, forKey: "fields[appStoreVersionExperiments]")
            encoder.encode(fieldsGameCenterEnabledVersions, forKey: "fields[gameCenterEnabledVersions]")
            encoder.encode(fieldsSubscriptionGracePeriods, forKey: "fields[subscriptionGracePeriods]")
            encoder.encode(fieldsEndUserLicenseAgreements, forKey: "fields[endUserLicenseAgreements]")
            encoder.encode(fieldsAppStoreVersions, forKey: "fields[appStoreVersions]")
            encoder.encode(fieldsAppCustomProductPages, forKey: "fields[appCustomProductPages]")
            encoder.encode(fieldsAppEncryptionDeclarations, forKey: "fields[appEncryptionDeclarations]")
            encoder.encode(fieldsPerfPowerMetrics, forKey: "fields[perfPowerMetrics]")
            encoder.encode(limitAppClips, forKey: "limit[appClips]")
            encoder.encode(limitAppCustomProductPages, forKey: "limit[appCustomProductPages]")
            encoder.encode(limitAppEncryptionDeclarations, forKey: "limit[appEncryptionDeclarations]")
            encoder.encode(limitAppEvents, forKey: "limit[appEvents]")
            encoder.encode(limitAppInfos, forKey: "limit[appInfos]")
            encoder.encode(limitAppStoreVersionExperimentsV2, forKey: "limit[appStoreVersionExperimentsV2]")
            encoder.encode(limitAppStoreVersions, forKey: "limit[appStoreVersions]")
            encoder.encode(limitBetaAppLocalizations, forKey: "limit[betaAppLocalizations]")
            encoder.encode(limitBetaGroups, forKey: "limit[betaGroups]")
            encoder.encode(limitBuilds, forKey: "limit[builds]")
            encoder.encode(limitGameCenterEnabledVersions, forKey: "limit[gameCenterEnabledVersions]")
            encoder.encode(limitInAppPurchases, forKey: "limit[inAppPurchases]")
            encoder.encode(limitInAppPurchasesV2, forKey: "limit[inAppPurchasesV2]")
            encoder.encode(limitPreReleaseVersions, forKey: "limit[preReleaseVersions]")
            encoder.encode(limitPromotedPurchases, forKey: "limit[promotedPurchases]")
            encoder.encode(limitReviewSubmissions, forKey: "limit[reviewSubmissions]")
            encoder.encode(limitSubscriptionGroups, forKey: "limit[subscriptionGroups]")
            return encoder.items
        }

        public enum FilterAppStoreVersionsAppStoreState: String, CaseIterable, Codable, Sendable {
            case accepted = "ACCEPTED"
            case developerRemovedFromSale = "DEVELOPER_REMOVED_FROM_SALE"
            case developerRejected = "DEVELOPER_REJECTED"
            case inReview = "IN_REVIEW"
            case invalidBinary = "INVALID_BINARY"
            case metadataRejected = "METADATA_REJECTED"
            case pendingAppleRelease = "PENDING_APPLE_RELEASE"
            case pendingContract = "PENDING_CONTRACT"
            case pendingDeveloperRelease = "PENDING_DEVELOPER_RELEASE"
            case prepareForSubmission = "PREPARE_FOR_SUBMISSION"
            case preorderReadyForSale = "PREORDER_READY_FOR_SALE"
            case processingForAppStore = "PROCESSING_FOR_APP_STORE"
            case readyForReview = "READY_FOR_REVIEW"
            case readyForSale = "READY_FOR_SALE"
            case rejected = "REJECTED"
            case removedFromSale = "REMOVED_FROM_SALE"
            case waitingForExportCompliance = "WAITING_FOR_EXPORT_COMPLIANCE"
            case waitingForReview = "WAITING_FOR_REVIEW"
            case replacedWithNewVersion = "REPLACED_WITH_NEW_VERSION"
            case notApplicable = "NOT_APPLICABLE"
        }

        public enum FilterAppStoreVersionsAppVersionState: String, CaseIterable, Codable, Sendable {
            case accepted = "ACCEPTED"
            case developerRejected = "DEVELOPER_REJECTED"
            case inReview = "IN_REVIEW"
            case invalidBinary = "INVALID_BINARY"
            case metadataRejected = "METADATA_REJECTED"
            case pendingAppleRelease = "PENDING_APPLE_RELEASE"
            case pendingDeveloperRelease = "PENDING_DEVELOPER_RELEASE"
            case prepareForSubmission = "PREPARE_FOR_SUBMISSION"
            case processingForDistribution = "PROCESSING_FOR_DISTRIBUTION"
            case readyForDistribution = "READY_FOR_DISTRIBUTION"
            case readyForReview = "READY_FOR_REVIEW"
            case rejected = "REJECTED"
            case replacedWithNewVersion = "REPLACED_WITH_NEW_VERSION"
            case waitingForExportCompliance = "WAITING_FOR_EXPORT_COMPLIANCE"
            case waitingForReview = "WAITING_FOR_REVIEW"
        }

        public enum FilterAppStoreVersionsPlatform: String, CaseIterable, Codable, Sendable {
            case ios = "IOS"
            case macOs = "MAC_OS"
            case tvOs = "TV_OS"
            case visionOs = "VISION_OS"
        }

        public enum Sort: String, CaseIterable, Codable, Sendable {
            case bundleID = "bundleId"
            case minusbundleID = "-bundleId"
            case name
            case minusname = "-name"
            case sku
            case minussku = "-sku"
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

        public enum Include: String, CaseIterable, Codable, Sendable {
            case appClips
            case appCustomProductPages
            case appEncryptionDeclarations
            case appEvents
            case appInfos
            case appStoreVersionExperimentsV2
            case appStoreVersions
            case betaAppLocalizations
            case betaAppReviewDetail
            case betaGroups
            case betaLicenseAgreement
            case builds
            case ciProduct
            case endUserLicenseAgreement
            case gameCenterDetail
            case gameCenterEnabledVersions
            case inAppPurchases
            case inAppPurchasesV2
            case preOrder
            case preReleaseVersions
            case promotedPurchases
            case reviewSubmissions
            case subscriptionGracePeriod
            case subscriptionGroups
        }

        public enum FieldsBetaAppReviewDetails: String, CaseIterable, Codable, Sendable {
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

        public enum FieldsGameCenterDetails: String, CaseIterable, Codable, Sendable {
            case achievementReleases
            case app
            case arcadeEnabled
            case challengeEnabled
            case defaultGroupLeaderboard
            case defaultLeaderboard
            case gameCenterAchievements
            case gameCenterAppVersions
            case gameCenterGroup
            case gameCenterLeaderboardSets
            case gameCenterLeaderboards
            case leaderboardReleases
            case leaderboardSetReleases
        }

        public enum FieldsAppPriceSchedules: String, CaseIterable, Codable, Sendable {
            case app
            case automaticPrices
            case baseTerritory
            case manualPrices
        }

        public enum FieldsCiProducts: String, CaseIterable, Codable, Sendable {
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

        public enum FieldsAlternativeDistributionKeys: String, CaseIterable, Codable, Sendable {
            case app
            case publicKey
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

        public enum FieldsBetaGroups: String, CaseIterable, Codable, Sendable {
            case app
            case betaTesters
            case builds
            case createdDate
            case feedbackEnabled
            case hasAccessToAllBuilds
            case iosBuildsAvailableForAppleSiliconMac
            case isInternalGroup
            case name
            case publicLink
            case publicLinkEnabled
            case publicLinkID = "publicLinkId"
            case publicLinkLimit
            case publicLinkLimitEnabled
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

        public enum FieldsAppAvailabilities: String, CaseIterable, Codable, Sendable {
            case app
            case availableInNewTerritories
            case availableTerritories
        }

        public enum FieldsCustomerReviews: String, CaseIterable, Codable, Sendable {
            case body
            case createdDate
            case rating
            case response
            case reviewerNickname
            case territory
            case title
        }

        public enum FieldsAppEvents: String, CaseIterable, Codable, Sendable {
            case app
            case archivedTerritorySchedules
            case badge
            case deepLink
            case eventState
            case localizations
            case primaryLocale
            case priority
            case purchaseRequirement
            case purpose
            case referenceName
            case territorySchedules
        }

        public enum FieldsBuilds: String, CaseIterable, Codable, Sendable {
            case app
            case appEncryptionDeclaration
            case appStoreVersion
            case betaAppReviewSubmission
            case betaBuildLocalizations
            case betaGroups
            case buildAudienceType
            case buildBetaDetail
            case buildBundles
            case computedMinMacOsVersion
            case diagnosticSignatures
            case expirationDate
            case expired
            case iconAssetToken
            case icons
            case individualTesters
            case lsMinimumSystemVersion
            case minOsVersion
            case perfPowerMetrics
            case preReleaseVersion
            case processingState
            case uploadedDate
            case usesNonExemptEncryption
            case version
        }

        public enum FieldsBetaLicenseAgreements: String, CaseIterable, Codable, Sendable {
            case agreementText
            case app
        }

        public enum FieldsMarketplaceSearchDetails: String, CaseIterable, Codable, Sendable {
            case app
            case catalogURL = "catalogUrl"
        }

        public enum FieldsAppClips: String, CaseIterable, Codable, Sendable {
            case app
            case appClipAdvancedExperiences
            case appClipDefaultExperiences
            case bundleID = "bundleId"
        }

        public enum FieldsAppInfos: String, CaseIterable, Codable, Sendable {
            case ageRatingDeclaration
            case app
            case appInfoLocalizations
            case appStoreAgeRating
            case appStoreState
            case brazilAgeRating
            case brazilAgeRatingV2
            case kidsAgeBand
            case primaryCategory
            case primarySubcategoryOne
            case primarySubcategoryTwo
            case secondaryCategory
            case secondarySubcategoryOne
            case secondarySubcategoryTwo
            case state
        }

        public enum FieldsBetaAppLocalizations: String, CaseIterable, Codable, Sendable {
            case app
            case description
            case feedbackEmail
            case locale
            case marketingURL = "marketingUrl"
            case privacyPolicyURL = "privacyPolicyUrl"
            case tvOsPrivacyPolicy
        }

        public enum FieldsAppPricePoints: String, CaseIterable, Codable, Sendable {
            case app
            case customerPrice
            case equalizations
            case proceeds
            case territory
        }

        public enum FieldsInAppPurchases: String, CaseIterable, Codable, Sendable {
            case app
            case appStoreReviewScreenshot
            case apps
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
            case referenceName
            case reviewNote
            case state
        }

        public enum FieldsPreReleaseVersions: String, CaseIterable, Codable, Sendable {
            case app
            case builds
            case platform
            case version
        }

        public enum FieldsSubscriptionGroups: String, CaseIterable, Codable, Sendable {
            case app
            case referenceName
            case subscriptionGroupLocalizations
            case subscriptions
        }

        public enum FieldsAnalyticsReportRequests: String, CaseIterable, Codable, Sendable {
            case accessType
            case app
            case reports
            case stoppedDueToInactivity
        }

        public enum FieldsAppPreOrders: String, CaseIterable, Codable, Sendable {
            case app
            case appReleaseDate
            case preOrderAvailableDate
        }

        public enum FieldsAppStoreVersionExperiments: String, CaseIterable, Codable, Sendable {
            case app
            case appStoreVersionExperimentTreatments
            case controlVersions
            case endDate
            case latestControlVersion
            case name
            case platform
            case reviewRequired
            case startDate
            case started
            case state
            case trafficProportion
        }

        public enum FieldsGameCenterEnabledVersions: String, CaseIterable, Codable, Sendable {
            case app
            case compatibleVersions
            case iconAsset
            case platform
            case versionString
        }

        public enum FieldsSubscriptionGracePeriods: String, CaseIterable, Codable, Sendable {
            case duration
            case optIn
            case renewalType
            case sandboxOptIn
        }

        public enum FieldsEndUserLicenseAgreements: String, CaseIterable, Codable, Sendable {
            case agreementText
            case app
            case territories
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

        public enum FieldsAppCustomProductPages: String, CaseIterable, Codable, Sendable {
            case app
            case appCustomProductPageVersions
            case appStoreVersionTemplate
            case customProductPageTemplate
            case name
            case url
            case visible
        }

        public enum FieldsAppEncryptionDeclarations: String, CaseIterable, Codable, Sendable {
            case app
            case appDescription
            case appEncryptionDeclarationDocument
            case appEncryptionDeclarationState
            case availableOnFrenchStore
            case builds
            case codeValue
            case containsProprietaryCryptography
            case containsThirdPartyCryptography
            case createdDate
            case documentName
            case documentType
            case documentURL = "documentUrl"
            case exempt
            case platform
            case uploadedDate
            case usesEncryption
        }

        public enum FieldsPerfPowerMetrics: String, CaseIterable, Codable, Sendable {
            case deviceType
            case metricType
            case platform
        }
    }
}
