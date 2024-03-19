// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.CiProducts.WithID {
    public var app: App {
        App(path: path + "/app")
    }

    public struct App {
        /// Path: `/v1/ciProducts/{id}/app`
        public let path: String

        public func get(fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails]? = nil, fieldsCiProducts: [FieldsCiProducts]? = nil, fieldsReviewSubmissions: [FieldsReviewSubmissions]? = nil, fieldsBetaGroups: [FieldsBetaGroups]? = nil, fieldsPromotedPurchases: [FieldsPromotedPurchases]? = nil, fieldsApps: [FieldsApps]? = nil, fieldsAppEvents: [FieldsAppEvents]? = nil, fieldsBuilds: [FieldsBuilds]? = nil, fieldsBetaLicenseAgreements: [FieldsBetaLicenseAgreements]? = nil, fieldsAppClips: [FieldsAppClips]? = nil, fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations]? = nil, fieldsAppInfos: [FieldsAppInfos]? = nil, fieldsPreReleaseVersions: [FieldsPreReleaseVersions]? = nil, fieldsInAppPurchases: [FieldsInAppPurchases]? = nil, fieldsSubscriptionGroups: [FieldsSubscriptionGroups]? = nil, fieldsAppPreOrders: [FieldsAppPreOrders]? = nil, fieldsAppPrices: [FieldsAppPrices]? = nil, fieldsGameCenterEnabledVersions: [FieldsGameCenterEnabledVersions]? = nil, fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments]? = nil, fieldsSubscriptionGracePeriods: [FieldsSubscriptionGracePeriods]? = nil, fieldsEndUserLicenseAgreements: [FieldsEndUserLicenseAgreements]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions]? = nil, fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations]? = nil, fieldsAppCustomProductPages: [FieldsAppCustomProductPages]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, limitAppEncryptionDeclarations: Int? = nil, limitBetaGroups: Int? = nil, limitAppStoreVersions: Int? = nil, limitPreReleaseVersions: Int? = nil, limitBetaAppLocalizations: Int? = nil, limitBuilds: Int? = nil, limitAppInfos: Int? = nil, limitAppClips: Int? = nil, limitPrices: Int? = nil, limitAvailableTerritories: Int? = nil, limitInAppPurchases: Int? = nil, limitSubscriptionGroups: Int? = nil, limitGameCenterEnabledVersions: Int? = nil, limitAppCustomProductPages: Int? = nil, limitInAppPurchasesV2: Int? = nil, limitPromotedPurchases: Int? = nil, limitAppEvents: Int? = nil, limitReviewSubmissions: Int? = nil, limitAppStoreVersionExperimentsV2: Int? = nil, include: [Include]? = nil) -> Request<_Specification.AppResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsBetaAppReviewDetails, fieldsGameCenterDetails, fieldsCiProducts, fieldsReviewSubmissions, fieldsBetaGroups, fieldsPromotedPurchases, fieldsApps, fieldsAppEvents, fieldsBuilds, fieldsBetaLicenseAgreements, fieldsAppClips, fieldsBetaAppLocalizations, fieldsAppInfos, fieldsPreReleaseVersions, fieldsInAppPurchases, fieldsSubscriptionGroups, fieldsAppPreOrders, fieldsAppPrices, fieldsGameCenterEnabledVersions, fieldsAppStoreVersionExperiments, fieldsSubscriptionGracePeriods, fieldsEndUserLicenseAgreements, fieldsAppStoreVersions, fieldsAppEncryptionDeclarations, fieldsAppCustomProductPages, fieldsTerritories, limitAppEncryptionDeclarations, limitBetaGroups, limitAppStoreVersions, limitPreReleaseVersions, limitBetaAppLocalizations, limitBuilds, limitAppInfos, limitAppClips, limitPrices, limitAvailableTerritories, limitInAppPurchases, limitSubscriptionGroups, limitGameCenterEnabledVersions, limitAppCustomProductPages, limitInAppPurchasesV2, limitPromotedPurchases, limitAppEvents, limitReviewSubmissions, limitAppStoreVersionExperimentsV2, include), id: "ciProducts-app-get_to_one_related")
        }

        private func makeGetQuery(_ fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails]?, _ fieldsGameCenterDetails: [FieldsGameCenterDetails]?, _ fieldsCiProducts: [FieldsCiProducts]?, _ fieldsReviewSubmissions: [FieldsReviewSubmissions]?, _ fieldsBetaGroups: [FieldsBetaGroups]?, _ fieldsPromotedPurchases: [FieldsPromotedPurchases]?, _ fieldsApps: [FieldsApps]?, _ fieldsAppEvents: [FieldsAppEvents]?, _ fieldsBuilds: [FieldsBuilds]?, _ fieldsBetaLicenseAgreements: [FieldsBetaLicenseAgreements]?, _ fieldsAppClips: [FieldsAppClips]?, _ fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations]?, _ fieldsAppInfos: [FieldsAppInfos]?, _ fieldsPreReleaseVersions: [FieldsPreReleaseVersions]?, _ fieldsInAppPurchases: [FieldsInAppPurchases]?, _ fieldsSubscriptionGroups: [FieldsSubscriptionGroups]?, _ fieldsAppPreOrders: [FieldsAppPreOrders]?, _ fieldsAppPrices: [FieldsAppPrices]?, _ fieldsGameCenterEnabledVersions: [FieldsGameCenterEnabledVersions]?, _ fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments]?, _ fieldsSubscriptionGracePeriods: [FieldsSubscriptionGracePeriods]?, _ fieldsEndUserLicenseAgreements: [FieldsEndUserLicenseAgreements]?, _ fieldsAppStoreVersions: [FieldsAppStoreVersions]?, _ fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations]?, _ fieldsAppCustomProductPages: [FieldsAppCustomProductPages]?, _ fieldsTerritories: [FieldsTerritories]?, _ limitAppEncryptionDeclarations: Int?, _ limitBetaGroups: Int?, _ limitAppStoreVersions: Int?, _ limitPreReleaseVersions: Int?, _ limitBetaAppLocalizations: Int?, _ limitBuilds: Int?, _ limitAppInfos: Int?, _ limitAppClips: Int?, _ limitPrices: Int?, _ limitAvailableTerritories: Int?, _ limitInAppPurchases: Int?, _ limitSubscriptionGroups: Int?, _ limitGameCenterEnabledVersions: Int?, _ limitAppCustomProductPages: Int?, _ limitInAppPurchasesV2: Int?, _ limitPromotedPurchases: Int?, _ limitAppEvents: Int?, _ limitReviewSubmissions: Int?, _ limitAppStoreVersionExperimentsV2: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsBetaAppReviewDetails, forKey: "fields[betaAppReviewDetails]")
            encoder.encode(fieldsGameCenterDetails, forKey: "fields[gameCenterDetails]")
            encoder.encode(fieldsCiProducts, forKey: "fields[ciProducts]")
            encoder.encode(fieldsReviewSubmissions, forKey: "fields[reviewSubmissions]")
            encoder.encode(fieldsBetaGroups, forKey: "fields[betaGroups]")
            encoder.encode(fieldsPromotedPurchases, forKey: "fields[promotedPurchases]")
            encoder.encode(fieldsApps, forKey: "fields[apps]")
            encoder.encode(fieldsAppEvents, forKey: "fields[appEvents]")
            encoder.encode(fieldsBuilds, forKey: "fields[builds]")
            encoder.encode(fieldsBetaLicenseAgreements, forKey: "fields[betaLicenseAgreements]")
            encoder.encode(fieldsAppClips, forKey: "fields[appClips]")
            encoder.encode(fieldsBetaAppLocalizations, forKey: "fields[betaAppLocalizations]")
            encoder.encode(fieldsAppInfos, forKey: "fields[appInfos]")
            encoder.encode(fieldsPreReleaseVersions, forKey: "fields[preReleaseVersions]")
            encoder.encode(fieldsInAppPurchases, forKey: "fields[inAppPurchases]")
            encoder.encode(fieldsSubscriptionGroups, forKey: "fields[subscriptionGroups]")
            encoder.encode(fieldsAppPreOrders, forKey: "fields[appPreOrders]")
            encoder.encode(fieldsAppPrices, forKey: "fields[appPrices]")
            encoder.encode(fieldsGameCenterEnabledVersions, forKey: "fields[gameCenterEnabledVersions]")
            encoder.encode(fieldsAppStoreVersionExperiments, forKey: "fields[appStoreVersionExperiments]")
            encoder.encode(fieldsSubscriptionGracePeriods, forKey: "fields[subscriptionGracePeriods]")
            encoder.encode(fieldsEndUserLicenseAgreements, forKey: "fields[endUserLicenseAgreements]")
            encoder.encode(fieldsAppStoreVersions, forKey: "fields[appStoreVersions]")
            encoder.encode(fieldsAppEncryptionDeclarations, forKey: "fields[appEncryptionDeclarations]")
            encoder.encode(fieldsAppCustomProductPages, forKey: "fields[appCustomProductPages]")
            encoder.encode(fieldsTerritories, forKey: "fields[territories]")
            encoder.encode(limitAppEncryptionDeclarations, forKey: "limit[appEncryptionDeclarations]")
            encoder.encode(limitBetaGroups, forKey: "limit[betaGroups]")
            encoder.encode(limitAppStoreVersions, forKey: "limit[appStoreVersions]")
            encoder.encode(limitPreReleaseVersions, forKey: "limit[preReleaseVersions]")
            encoder.encode(limitBetaAppLocalizations, forKey: "limit[betaAppLocalizations]")
            encoder.encode(limitBuilds, forKey: "limit[builds]")
            encoder.encode(limitAppInfos, forKey: "limit[appInfos]")
            encoder.encode(limitAppClips, forKey: "limit[appClips]")
            encoder.encode(limitPrices, forKey: "limit[prices]")
            encoder.encode(limitAvailableTerritories, forKey: "limit[availableTerritories]")
            encoder.encode(limitInAppPurchases, forKey: "limit[inAppPurchases]")
            encoder.encode(limitSubscriptionGroups, forKey: "limit[subscriptionGroups]")
            encoder.encode(limitGameCenterEnabledVersions, forKey: "limit[gameCenterEnabledVersions]")
            encoder.encode(limitAppCustomProductPages, forKey: "limit[appCustomProductPages]")
            encoder.encode(limitInAppPurchasesV2, forKey: "limit[inAppPurchasesV2]")
            encoder.encode(limitPromotedPurchases, forKey: "limit[promotedPurchases]")
            encoder.encode(limitAppEvents, forKey: "limit[appEvents]")
            encoder.encode(limitReviewSubmissions, forKey: "limit[reviewSubmissions]")
            encoder.encode(limitAppStoreVersionExperimentsV2, forKey: "limit[appStoreVersionExperimentsV2]")
            encoder.encode(include, forKey: "include")
            return encoder.items
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

        public enum FieldsAppClips: String, CaseIterable, Codable, Sendable {
            case app
            case appClipAdvancedExperiences
            case appClipDefaultExperiences
            case bundleID = "bundleId"
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

        public enum FieldsPreReleaseVersions: String, CaseIterable, Codable, Sendable {
            case app
            case builds
            case platform
            case version
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

        public enum FieldsSubscriptionGroups: String, CaseIterable, Codable, Sendable {
            case app
            case referenceName
            case subscriptionGroupLocalizations
            case subscriptions
        }

        public enum FieldsAppPreOrders: String, CaseIterable, Codable, Sendable {
            case app
            case appReleaseDate
            case preOrderAvailableDate
        }

        public enum FieldsAppPrices: String, CaseIterable, Codable, Sendable {
            case app
            case priceTier
        }

        public enum FieldsGameCenterEnabledVersions: String, CaseIterable, Codable, Sendable {
            case app
            case compatibleVersions
            case iconAsset
            case platform
            case versionString
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

        public enum FieldsAppCustomProductPages: String, CaseIterable, Codable, Sendable {
            case app
            case appCustomProductPageVersions
            case appStoreVersionTemplate
            case customProductPageTemplate
            case name
            case url
            case visible
        }

        public enum FieldsTerritories: String, CaseIterable, Codable, Sendable {
            case currency
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case appClips
            case appCustomProductPages
            case appEncryptionDeclarations
            case appEvents
            case appInfos
            case appStoreVersionExperimentsV2
            case appStoreVersions
            case availableTerritories
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
            case prices
            case promotedPurchases
            case reviewSubmissions
            case subscriptionGracePeriod
            case subscriptionGroups
        }
    }
}
