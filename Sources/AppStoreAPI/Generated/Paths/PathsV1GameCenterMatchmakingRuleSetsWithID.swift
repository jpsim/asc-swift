// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.GameCenterMatchmakingRuleSets {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/gameCenterMatchmakingRuleSets/{id}`
        public let path: String

        public func get(fieldsGameCenterMatchmakingRuleSets: [FieldsGameCenterMatchmakingRuleSets]? = nil, include: [Include]? = nil, fieldsGameCenterMatchmakingQueues: [FieldsGameCenterMatchmakingQueues]? = nil, fieldsGameCenterMatchmakingTeams: [FieldsGameCenterMatchmakingTeams]? = nil, fieldsGameCenterMatchmakingRules: [FieldsGameCenterMatchmakingRules]? = nil, limitMatchmakingQueues: Int? = nil, limitRules: Int? = nil, limitTeams: Int? = nil) -> Request<AppStoreAPI.GameCenterMatchmakingRuleSetResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsGameCenterMatchmakingRuleSets, include, fieldsGameCenterMatchmakingQueues, fieldsGameCenterMatchmakingTeams, fieldsGameCenterMatchmakingRules, limitMatchmakingQueues, limitRules, limitTeams), id: "gameCenterMatchmakingRuleSets-get_instance")
        }

        private func makeGetQuery(_ fieldsGameCenterMatchmakingRuleSets: [FieldsGameCenterMatchmakingRuleSets]?, _ include: [Include]?, _ fieldsGameCenterMatchmakingQueues: [FieldsGameCenterMatchmakingQueues]?, _ fieldsGameCenterMatchmakingTeams: [FieldsGameCenterMatchmakingTeams]?, _ fieldsGameCenterMatchmakingRules: [FieldsGameCenterMatchmakingRules]?, _ limitMatchmakingQueues: Int?, _ limitRules: Int?, _ limitTeams: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsGameCenterMatchmakingRuleSets, forKey: "fields[gameCenterMatchmakingRuleSets]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsGameCenterMatchmakingQueues, forKey: "fields[gameCenterMatchmakingQueues]")
            encoder.encode(fieldsGameCenterMatchmakingTeams, forKey: "fields[gameCenterMatchmakingTeams]")
            encoder.encode(fieldsGameCenterMatchmakingRules, forKey: "fields[gameCenterMatchmakingRules]")
            encoder.encode(limitMatchmakingQueues, forKey: "limit[matchmakingQueues]")
            encoder.encode(limitRules, forKey: "limit[rules]")
            encoder.encode(limitTeams, forKey: "limit[teams]")
            return encoder.items
        }

        public enum FieldsGameCenterMatchmakingRuleSets: String, CaseIterable, Codable, Sendable {
            case matchmakingQueues
            case maxPlayers
            case minPlayers
            case referenceName
            case ruleLanguageVersion
            case rules
            case teams
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case matchmakingQueues
            case rules
            case teams
        }

        public enum FieldsGameCenterMatchmakingQueues: String, CaseIterable, Codable, Sendable {
            case classicMatchmakingBundleIDs = "classicMatchmakingBundleIds"
            case experimentRuleSet
            case referenceName
            case ruleSet
        }

        public enum FieldsGameCenterMatchmakingTeams: String, CaseIterable, Codable, Sendable {
            case maxPlayers
            case minPlayers
            case referenceName
            case ruleSet
        }

        public enum FieldsGameCenterMatchmakingRules: String, CaseIterable, Codable, Sendable {
            case description
            case expression
            case referenceName
            case ruleSet
            case type
            case weight
        }

        public func patch(_ body: AppStoreAPI.GameCenterMatchmakingRuleSetUpdateRequest) -> Request<AppStoreAPI.GameCenterMatchmakingRuleSetResponse> {
            Request(path: path, method: "PATCH", body: body, id: "gameCenterMatchmakingRuleSets-update_instance")
        }

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "gameCenterMatchmakingRuleSets-delete_instance")
        }
    }
}
