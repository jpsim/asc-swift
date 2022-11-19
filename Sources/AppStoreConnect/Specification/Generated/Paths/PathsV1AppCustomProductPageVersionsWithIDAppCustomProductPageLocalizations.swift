// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppCustomProductPageVersions.WithID {
    public var appCustomProductPageLocalizations: AppCustomProductPageLocalizations {
        AppCustomProductPageLocalizations(path: path + "/appCustomProductPageLocalizations")
    }

    public struct AppCustomProductPageLocalizations {
        /// Path: `/v1/appCustomProductPageVersions/{id}/appCustomProductPageLocalizations`
        public let path: String

        public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect.AppCustomProductPageLocalizationsResponse> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "appCustomProductPageVersions-appCustomProductPageLocalizations-get_to_many_related")
        }

        public struct GetParameters {
            public var filterLocale: [String]?
            public var fieldsAppScreenshotSets: [FieldsAppScreenshotSets]?
            public var fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations]?
            public var fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions]?
            public var fieldsAppPreviewSets: [FieldsAppPreviewSets]?
            public var limit: Int?
            public var limitAppScreenshotSets: Int?
            public var limitAppPreviewSets: Int?
            public var include: [Include]?

            public enum FieldsAppScreenshotSets: String, Codable, CaseIterable {
                case appCustomProductPageLocalization
                case appScreenshots
                case appStoreVersionExperimentTreatmentLocalization
                case appStoreVersionLocalization
                case screenshotDisplayType
            }

            public enum FieldsAppCustomProductPageLocalizations: String, Codable, CaseIterable {
                case appCustomProductPageVersion
                case appPreviewSets
                case appScreenshotSets
                case locale
                case promotionalText
            }

            public enum FieldsAppCustomProductPageVersions: String, Codable, CaseIterable {
                case appCustomProductPage
                case appCustomProductPageLocalizations
                case state
                case version
            }

            public enum FieldsAppPreviewSets: String, Codable, CaseIterable {
                case appCustomProductPageLocalization
                case appPreviews
                case appStoreVersionExperimentTreatmentLocalization
                case appStoreVersionLocalization
                case previewType
            }

            public enum Include: String, Codable, CaseIterable {
                case appCustomProductPageVersion
                case appPreviewSets
                case appScreenshotSets
            }

            public init(filterLocale: [String]? = nil, fieldsAppScreenshotSets: [FieldsAppScreenshotSets]? = nil, fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations]? = nil, fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions]? = nil, fieldsAppPreviewSets: [FieldsAppPreviewSets]? = nil, limit: Int? = nil, limitAppScreenshotSets: Int? = nil, limitAppPreviewSets: Int? = nil, include: [Include]? = nil) {
                self.filterLocale = filterLocale
                self.fieldsAppScreenshotSets = fieldsAppScreenshotSets
                self.fieldsAppCustomProductPageLocalizations = fieldsAppCustomProductPageLocalizations
                self.fieldsAppCustomProductPageVersions = fieldsAppCustomProductPageVersions
                self.fieldsAppPreviewSets = fieldsAppPreviewSets
                self.limit = limit
                self.limitAppScreenshotSets = limitAppScreenshotSets
                self.limitAppPreviewSets = limitAppPreviewSets
                self.include = include
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder(explode: false)
                encoder.encode(filterLocale, forKey: "filter[locale]")
                encoder.encode(fieldsAppScreenshotSets, forKey: "fields[appScreenshotSets]")
                encoder.encode(fieldsAppCustomProductPageLocalizations, forKey: "fields[appCustomProductPageLocalizations]")
                encoder.encode(fieldsAppCustomProductPageVersions, forKey: "fields[appCustomProductPageVersions]")
                encoder.encode(fieldsAppPreviewSets, forKey: "fields[appPreviewSets]")
                encoder.encode(limit, forKey: "limit")
                encoder.encode(limitAppScreenshotSets, forKey: "limit[appScreenshotSets]")
                encoder.encode(limitAppPreviewSets, forKey: "limit[appPreviewSets]")
                encoder.encode(include, forKey: "include")
                return encoder.items
            }
        }
    }
}
