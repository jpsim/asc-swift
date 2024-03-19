// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.GameCenterLeaderboardSetImages {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/gameCenterLeaderboardSetImages/{id}`
        public let path: String

        public func get(fieldsGameCenterLeaderboardSetImages: [FieldsGameCenterLeaderboardSetImages]? = nil, include: [Include]? = nil) -> Request<_Specification.GameCenterLeaderboardSetImageResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsGameCenterLeaderboardSetImages, include), id: "gameCenterLeaderboardSetImages-get_instance")
        }

        private func makeGetQuery(_ fieldsGameCenterLeaderboardSetImages: [FieldsGameCenterLeaderboardSetImages]?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsGameCenterLeaderboardSetImages, forKey: "fields[gameCenterLeaderboardSetImages]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsGameCenterLeaderboardSetImages: String, CaseIterable, Codable, Sendable {
            case assetDeliveryState
            case fileName
            case fileSize
            case gameCenterLeaderboardSetLocalization
            case imageAsset
            case uploadOperations
            case uploaded
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case gameCenterLeaderboardSetLocalization
        }

        public func patch(_ body: _Specification.GameCenterLeaderboardSetImageUpdateRequest) -> Request<_Specification.GameCenterLeaderboardSetImageResponse> {
            Request(path: path, method: "PATCH", body: body, id: "gameCenterLeaderboardSetImages-update_instance")
        }

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "gameCenterLeaderboardSetImages-delete_instance")
        }
    }
}
