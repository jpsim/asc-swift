// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var gameCenterMatchmakingQueues: GameCenterMatchmakingQueues {
        GameCenterMatchmakingQueues(path: path + "/gameCenterMatchmakingQueues")
    }

    public struct GameCenterMatchmakingQueues {
        /// Path: `/v1/gameCenterMatchmakingQueues`
        public let path: String

        public func get(fieldsGameCenterMatchmakingQueues: [FieldsGameCenterMatchmakingQueues]? = nil, limit: Int? = nil, include: [Include]? = nil) -> Request<_Specification.GameCenterMatchmakingQueuesResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsGameCenterMatchmakingQueues, limit, include), id: "gameCenterMatchmakingQueues-get_collection")
        }

        private func makeGetQuery(_ fieldsGameCenterMatchmakingQueues: [FieldsGameCenterMatchmakingQueues]?, _ limit: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsGameCenterMatchmakingQueues, forKey: "fields[gameCenterMatchmakingQueues]")
            encoder.encode(limit, forKey: "limit")
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

        public func post(_ body: _Specification.GameCenterMatchmakingQueueCreateRequest) -> Request<_Specification.GameCenterMatchmakingQueueResponse> {
            Request(path: path, method: "POST", body: body, id: "gameCenterMatchmakingQueues-create_instance")
        }
    }
}
