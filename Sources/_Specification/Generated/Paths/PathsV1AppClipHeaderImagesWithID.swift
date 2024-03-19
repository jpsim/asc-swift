// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppClipHeaderImages {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/appClipHeaderImages/{id}`
        public let path: String

        public func get(fieldsAppClipHeaderImages: [FieldsAppClipHeaderImages]? = nil, include: [Include]? = nil) -> Request<_Specification.AppClipHeaderImageResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsAppClipHeaderImages, include), id: "appClipHeaderImages-get_instance")
        }

        private func makeGetQuery(_ fieldsAppClipHeaderImages: [FieldsAppClipHeaderImages]?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsAppClipHeaderImages, forKey: "fields[appClipHeaderImages]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsAppClipHeaderImages: String, CaseIterable, Codable, Sendable {
            case appClipDefaultExperienceLocalization
            case assetDeliveryState
            case fileName
            case fileSize
            case imageAsset
            case sourceFileChecksum
            case uploadOperations
            case uploaded
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case appClipDefaultExperienceLocalization
        }

        public func patch(_ body: _Specification.AppClipHeaderImageUpdateRequest) -> Request<_Specification.AppClipHeaderImageResponse> {
            Request(path: path, method: "PATCH", body: body, id: "appClipHeaderImages-update_instance")
        }

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "appClipHeaderImages-delete_instance")
        }
    }
}
