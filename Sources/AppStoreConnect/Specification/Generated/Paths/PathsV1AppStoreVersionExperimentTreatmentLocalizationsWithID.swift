// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppStoreVersionExperimentTreatmentLocalizations {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/appStoreVersionExperimentTreatmentLocalizations/{id}`
        public let path: String

        public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect.AppStoreVersionExperimentTreatmentLocalizationResponse> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "appStoreVersionExperimentTreatmentLocalizations-get_instance")
        }

        public struct GetParameters {
            public var fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations]?
            public var include: [Include]?
            public var fieldsAppScreenshotSets: [FieldsAppScreenshotSets]?
            public var fieldsAppPreviewSets: [FieldsAppPreviewSets]?
            public var limitAppPreviewSets: Int?
            public var limitAppScreenshotSets: Int?

            public enum FieldsAppStoreVersionExperimentTreatmentLocalizations: String, Codable, CaseIterable {
                case appPreviewSets
                case appScreenshotSets
                case appStoreVersionExperimentTreatment
                case locale
            }

            public enum Include: String, Codable, CaseIterable {
                case appPreviewSets
                case appScreenshotSets
                case appStoreVersionExperimentTreatment
            }

            public enum FieldsAppScreenshotSets: String, Codable, CaseIterable {
                case appCustomProductPageLocalization
                case appScreenshots
                case appStoreVersionExperimentTreatmentLocalization
                case appStoreVersionLocalization
                case screenshotDisplayType
            }

            public enum FieldsAppPreviewSets: String, Codable, CaseIterable {
                case appCustomProductPageLocalization
                case appPreviews
                case appStoreVersionExperimentTreatmentLocalization
                case appStoreVersionLocalization
                case previewType
            }

            public init(fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations]? = nil, include: [Include]? = nil, fieldsAppScreenshotSets: [FieldsAppScreenshotSets]? = nil, fieldsAppPreviewSets: [FieldsAppPreviewSets]? = nil, limitAppPreviewSets: Int? = nil, limitAppScreenshotSets: Int? = nil) {
                self.fieldsAppStoreVersionExperimentTreatmentLocalizations = fieldsAppStoreVersionExperimentTreatmentLocalizations
                self.include = include
                self.fieldsAppScreenshotSets = fieldsAppScreenshotSets
                self.fieldsAppPreviewSets = fieldsAppPreviewSets
                self.limitAppPreviewSets = limitAppPreviewSets
                self.limitAppScreenshotSets = limitAppScreenshotSets
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder(explode: false)
                encoder.encode(fieldsAppStoreVersionExperimentTreatmentLocalizations, forKey: "fields[appStoreVersionExperimentTreatmentLocalizations]")
                encoder.encode(include, forKey: "include")
                encoder.encode(fieldsAppScreenshotSets, forKey: "fields[appScreenshotSets]")
                encoder.encode(fieldsAppPreviewSets, forKey: "fields[appPreviewSets]")
                encoder.encode(limitAppPreviewSets, forKey: "limit[appPreviewSets]")
                encoder.encode(limitAppScreenshotSets, forKey: "limit[appScreenshotSets]")
                return encoder.items
            }
        }

        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "appStoreVersionExperimentTreatmentLocalizations-delete_instance")
        }
    }
}
