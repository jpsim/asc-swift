// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.AppEventLocalizations.WithID {
    public var appEventScreenshots: AppEventScreenshots {
        AppEventScreenshots(path: path + "/appEventScreenshots")
    }

    public struct AppEventScreenshots {
        /// Path: `/v1/appEventLocalizations/{id}/appEventScreenshots`
        public let path: String

        public func get(fieldsAppEventScreenshots: [FieldsAppEventScreenshots]? = nil, fieldsAppEventLocalizations: [FieldsAppEventLocalizations]? = nil, limit: Int? = nil, include: [Include]? = nil) -> Request<AppStoreAPI.AppEventScreenshotsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsAppEventScreenshots, fieldsAppEventLocalizations, limit, include), id: "appEventLocalizations_appEventScreenshots_getToManyRelated")
        }

        private func makeGetQuery(_ fieldsAppEventScreenshots: [FieldsAppEventScreenshots]?, _ fieldsAppEventLocalizations: [FieldsAppEventLocalizations]?, _ limit: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsAppEventScreenshots, forKey: "fields[appEventScreenshots]")
            encoder.encode(fieldsAppEventLocalizations, forKey: "fields[appEventLocalizations]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsAppEventScreenshots: String, CaseIterable, Codable, Sendable {
            case fileSize
            case fileName
            case imageAsset
            case assetToken
            case uploadOperations
            case assetDeliveryState
            case appEventAssetType
            case appEventLocalization
        }

        public enum FieldsAppEventLocalizations: String, CaseIterable, Codable, Sendable {
            case locale
            case name
            case shortDescription
            case longDescription
            case appEvent
            case appEventScreenshots
            case appEventVideoClips
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case appEventLocalization
        }
    }
}
