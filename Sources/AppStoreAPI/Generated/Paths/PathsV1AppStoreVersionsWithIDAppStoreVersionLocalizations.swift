// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.AppStoreVersions.WithID {
    public var appStoreVersionLocalizations: AppStoreVersionLocalizations {
        AppStoreVersionLocalizations(path: path + "/appStoreVersionLocalizations")
    }

    public struct AppStoreVersionLocalizations {
        /// Path: `/v1/appStoreVersions/{id}/appStoreVersionLocalizations`
        public let path: String

        public func get(filterLocale: [String]? = nil, fieldsAppScreenshotSets: [FieldsAppScreenshotSets]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions]? = nil, fieldsAppPreviewSets: [FieldsAppPreviewSets]? = nil, fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations]? = nil, limit: Int? = nil, limitAppScreenshotSets: Int? = nil, limitAppPreviewSets: Int? = nil, include: [Include]? = nil) -> Request<AppStoreAPI.AppStoreVersionLocalizationsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterLocale, fieldsAppScreenshotSets, fieldsAppStoreVersions, fieldsAppPreviewSets, fieldsAppStoreVersionLocalizations, limit, limitAppScreenshotSets, limitAppPreviewSets, include), id: "appStoreVersions-appStoreVersionLocalizations-get_to_many_related")
        }

        private func makeGetQuery(_ filterLocale: [String]?, _ fieldsAppScreenshotSets: [FieldsAppScreenshotSets]?, _ fieldsAppStoreVersions: [FieldsAppStoreVersions]?, _ fieldsAppPreviewSets: [FieldsAppPreviewSets]?, _ fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations]?, _ limit: Int?, _ limitAppScreenshotSets: Int?, _ limitAppPreviewSets: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterLocale, forKey: "filter[locale]")
            encoder.encode(fieldsAppScreenshotSets, forKey: "fields[appScreenshotSets]")
            encoder.encode(fieldsAppStoreVersions, forKey: "fields[appStoreVersions]")
            encoder.encode(fieldsAppPreviewSets, forKey: "fields[appPreviewSets]")
            encoder.encode(fieldsAppStoreVersionLocalizations, forKey: "fields[appStoreVersionLocalizations]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(limitAppScreenshotSets, forKey: "limit[appScreenshotSets]")
            encoder.encode(limitAppPreviewSets, forKey: "limit[appPreviewSets]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsAppScreenshotSets: String, CaseIterable, Codable, Sendable {
            case appCustomProductPageLocalization
            case appScreenshots
            case appStoreVersionExperimentTreatmentLocalization
            case appStoreVersionLocalization
            case screenshotDisplayType
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

        public enum FieldsAppPreviewSets: String, CaseIterable, Codable, Sendable {
            case appCustomProductPageLocalization
            case appPreviews
            case appStoreVersionExperimentTreatmentLocalization
            case appStoreVersionLocalization
            case previewType
        }

        public enum FieldsAppStoreVersionLocalizations: String, CaseIterable, Codable, Sendable {
            case appPreviewSets
            case appScreenshotSets
            case appStoreVersion
            case description
            case keywords
            case locale
            case marketingURL = "marketingUrl"
            case promotionalText
            case supportURL = "supportUrl"
            case whatsNew
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case appPreviewSets
            case appScreenshotSets
            case appStoreVersion
        }
    }
}
