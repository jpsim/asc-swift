// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.GameCenterMatchmakingQueues {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/gameCenterMatchmakingQueues/{id}`
        public let path: String

        public func get(fieldsGameCenterMatchmakingQueues: [FieldsGameCenterMatchmakingQueues]? = nil, include: [Include]? = nil) -> Request<AppStoreAPI.GameCenterMatchmakingQueueResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsGameCenterMatchmakingQueues, include), id: "gameCenterMatchmakingQueues-get_instance")
        }

        private func makeGetQuery(_ fieldsGameCenterMatchmakingQueues: [FieldsGameCenterMatchmakingQueues]?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsGameCenterMatchmakingQueues, forKey: "fields[gameCenterMatchmakingQueues]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsGameCenterMatchmakingQueues: String, CaseIterable, Codable, Sendable {
            case classicMatchmakingBundleIDs = "classicMatchmakingBundleIds"
            case experimentRuleSet
            case referenceName
            case ruleSet
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case experimentRuleSet
            case ruleSet
        }

        public func patch(_ body: AppStoreAPI.GameCenterMatchmakingQueueUpdateRequest) -> Request<AppStoreAPI.GameCenterMatchmakingQueueResponse> {
            Request(path: path, method: "PATCH", body: body, id: "gameCenterMatchmakingQueues-update_instance")
        }

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "gameCenterMatchmakingQueues-delete_instance")
        }
    }
}
