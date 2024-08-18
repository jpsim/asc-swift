// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.AppCustomProductPages {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/appCustomProductPages/{id}`
        public let path: String

        public func get(fieldsAppCustomProductPages: [FieldsAppCustomProductPages]? = nil, include: [Include]? = nil, fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions]? = nil, limitAppCustomProductPageVersions: Int? = nil) -> Request<AppStoreAPI.AppCustomProductPageResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsAppCustomProductPages, include, fieldsAppCustomProductPageVersions, limitAppCustomProductPageVersions), id: "appCustomProductPages-get_instance")
        }

        private func makeGetQuery(_ fieldsAppCustomProductPages: [FieldsAppCustomProductPages]?, _ include: [Include]?, _ fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions]?, _ limitAppCustomProductPageVersions: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsAppCustomProductPages, forKey: "fields[appCustomProductPages]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsAppCustomProductPageVersions, forKey: "fields[appCustomProductPageVersions]")
            encoder.encode(limitAppCustomProductPageVersions, forKey: "limit[appCustomProductPageVersions]")
            return encoder.items
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

        public enum Include: String, CaseIterable, Codable, Sendable {
            case app
            case appCustomProductPageVersions
        }

        public enum FieldsAppCustomProductPageVersions: String, CaseIterable, Codable, Sendable {
            case appCustomProductPage
            case appCustomProductPageLocalizations
            case deepLink
            case state
            case version
        }

        public func patch(_ body: AppStoreAPI.AppCustomProductPageUpdateRequest) -> Request<AppStoreAPI.AppCustomProductPageResponse> {
            Request(path: path, method: "PATCH", body: body, id: "appCustomProductPages-update_instance")
        }

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "appCustomProductPages-delete_instance")
        }
    }
}
