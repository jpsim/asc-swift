// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.GameCenterMatchmakingRuleSets.WithID {
    public var rules: Rules {
        Rules(path: path + "/rules")
    }

    public struct Rules {
        /// Path: `/v1/gameCenterMatchmakingRuleSets/{id}/rules`
        public let path: String

        public func get(fieldsGameCenterMatchmakingRules: [FieldsGameCenterMatchmakingRules]? = nil, limit: Int? = nil) -> Request<AppStoreAPI.GameCenterMatchmakingRulesResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsGameCenterMatchmakingRules, limit), id: "gameCenterMatchmakingRuleSets-rules-get_to_many_related")
        }

        private func makeGetQuery(_ fieldsGameCenterMatchmakingRules: [FieldsGameCenterMatchmakingRules]?, _ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsGameCenterMatchmakingRules, forKey: "fields[gameCenterMatchmakingRules]", explode: false)
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }

        public enum FieldsGameCenterMatchmakingRules: String, CaseIterable, Codable, Sendable {
            case description
            case expression
            case referenceName
            case ruleSet
            case type
            case weight
        }
    }
}
