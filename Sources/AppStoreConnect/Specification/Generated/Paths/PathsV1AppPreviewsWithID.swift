// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppPreviews {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/appPreviews/{id}`
        public let path: String

        public func get(fieldsAppPreviews: [FieldsAppPreviews]? = nil, include: [Include]? = nil) -> Request<AppStoreConnect.AppPreviewResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(fieldsAppPreviews, include), id: "appPreviews-get_instance")
        }

        private func makeGetQuery(_ fieldsAppPreviews: [FieldsAppPreviews]?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsAppPreviews, forKey: "fields[appPreviews]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsAppPreviews: String, Codable, CaseIterable {
            case appPreviewSet
            case assetDeliveryState
            case fileName
            case fileSize
            case mimeType
            case previewFrameTimeCode
            case previewImage
            case sourceFileChecksum
            case uploadOperations
            case uploaded
            case videoURL = "videoUrl"
        }

        public enum Include: String, Codable, CaseIterable {
            case appPreviewSet
        }

        public func patch(_ body: AppStoreConnect.AppPreviewUpdateRequest) -> Request<AppStoreConnect.AppPreviewResponse> {
            Request(method: "PATCH", url: path, body: body, id: "appPreviews-update_instance")
        }

        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "appPreviews-delete_instance")
        }
    }
}
