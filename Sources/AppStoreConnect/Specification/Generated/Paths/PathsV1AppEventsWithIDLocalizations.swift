// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppEvents.WithID {
    public var localizations: Localizations {
        Localizations(path: path + "/localizations")
    }

    public struct Localizations {
        /// Path: `/v1/appEvents/{id}/localizations`
        public let path: String

        public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect.AppEventLocalizationsResponse> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "appEvents-localizations-get_to_many_related")
        }

        public struct GetParameters {
            public var fieldsAppEventScreenshots: [FieldsAppEventScreenshots]?
            public var fieldsAppEventVideoClips: [FieldsAppEventVideoClips]?
            public var fieldsAppEventLocalizations: [FieldsAppEventLocalizations]?
            public var fieldsAppEvents: [FieldsAppEvents]?
            public var limit: Int?
            public var limitAppEventScreenshots: Int?
            public var limitAppEventVideoClips: Int?
            public var include: [Include]?

            public enum FieldsAppEventScreenshots: String, Codable, CaseIterable {
                case appEventAssetType
                case appEventLocalization
                case assetDeliveryState
                case assetToken
                case fileName
                case fileSize
                case imageAsset
                case uploadOperations
                case uploaded
            }

            public enum FieldsAppEventVideoClips: String, Codable, CaseIterable {
                case appEventAssetType
                case appEventLocalization
                case assetDeliveryState
                case fileName
                case fileSize
                case previewFrameTimeCode
                case previewImage
                case uploadOperations
                case uploaded
                case videoURL = "videoUrl"
            }

            public enum FieldsAppEventLocalizations: String, Codable, CaseIterable {
                case appEvent
                case appEventScreenshots
                case appEventVideoClips
                case locale
                case longDescription
                case name
                case shortDescription
            }

            public enum FieldsAppEvents: String, Codable, CaseIterable {
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

            public enum Include: String, Codable, CaseIterable {
                case appEvent
                case appEventScreenshots
                case appEventVideoClips
            }

            public init(fieldsAppEventScreenshots: [FieldsAppEventScreenshots]? = nil, fieldsAppEventVideoClips: [FieldsAppEventVideoClips]? = nil, fieldsAppEventLocalizations: [FieldsAppEventLocalizations]? = nil, fieldsAppEvents: [FieldsAppEvents]? = nil, limit: Int? = nil, limitAppEventScreenshots: Int? = nil, limitAppEventVideoClips: Int? = nil, include: [Include]? = nil) {
                self.fieldsAppEventScreenshots = fieldsAppEventScreenshots
                self.fieldsAppEventVideoClips = fieldsAppEventVideoClips
                self.fieldsAppEventLocalizations = fieldsAppEventLocalizations
                self.fieldsAppEvents = fieldsAppEvents
                self.limit = limit
                self.limitAppEventScreenshots = limitAppEventScreenshots
                self.limitAppEventVideoClips = limitAppEventVideoClips
                self.include = include
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder(explode: false)
                encoder.encode(fieldsAppEventScreenshots, forKey: "fields[appEventScreenshots]")
                encoder.encode(fieldsAppEventVideoClips, forKey: "fields[appEventVideoClips]")
                encoder.encode(fieldsAppEventLocalizations, forKey: "fields[appEventLocalizations]")
                encoder.encode(fieldsAppEvents, forKey: "fields[appEvents]")
                encoder.encode(limit, forKey: "limit")
                encoder.encode(limitAppEventScreenshots, forKey: "limit[appEventScreenshots]")
                encoder.encode(limitAppEventVideoClips, forKey: "limit[appEventVideoClips]")
                encoder.encode(include, forKey: "include")
                return encoder.items
            }
        }
    }
}
