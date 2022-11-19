// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppStoreVersions.WithID {
    public var appStoreVersionLocalizations: AppStoreVersionLocalizations {
        AppStoreVersionLocalizations(path: path + "/appStoreVersionLocalizations")
    }

    public struct AppStoreVersionLocalizations {
        /// Path: `/v1/appStoreVersions/{id}/appStoreVersionLocalizations`
        public let path: String

        public func get(fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations]? = nil, limit: Int? = nil) -> Request<AppStoreConnect.AppStoreVersionLocalizationsResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(fieldsAppStoreVersionLocalizations, limit), id: "appStoreVersions-appStoreVersionLocalizations-get_to_many_related")
        }

        private func makeGetQuery(_ fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations]?, _ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsAppStoreVersionLocalizations, forKey: "fields[appStoreVersionLocalizations]", explode: false)
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }

        public enum FieldsAppStoreVersionLocalizations: String, Codable, CaseIterable {
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
    }
}
