// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.AppEvents {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/appEvents/{id}`
        public let path: String

        public func get(fieldsAppEvents: [FieldsAppEvents]? = nil, include: [Include]? = nil, fieldsAppEventLocalizations: [FieldsAppEventLocalizations]? = nil, limitLocalizations: Int? = nil) -> Request<AppStoreAPI.AppEventResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsAppEvents, include, fieldsAppEventLocalizations, limitLocalizations), id: "appEvents-get_instance")
        }

        private func makeGetQuery(_ fieldsAppEvents: [FieldsAppEvents]?, _ include: [Include]?, _ fieldsAppEventLocalizations: [FieldsAppEventLocalizations]?, _ limitLocalizations: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsAppEvents, forKey: "fields[appEvents]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsAppEventLocalizations, forKey: "fields[appEventLocalizations]")
            encoder.encode(limitLocalizations, forKey: "limit[localizations]")
            return encoder.items
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

        public enum Include: String, CaseIterable, Codable, Sendable {
            case localizations
        }

        public enum FieldsAppEventLocalizations: String, CaseIterable, Codable, Sendable {
            case appEvent
            case appEventScreenshots
            case appEventVideoClips
            case locale
            case longDescription
            case name
            case shortDescription
        }

        public func patch(_ body: AppStoreAPI.AppEventUpdateRequest) -> Request<AppStoreAPI.AppEventResponse> {
            Request(path: path, method: "PATCH", body: body, id: "appEvents-update_instance")
        }

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "appEvents-delete_instance")
        }
    }
}
