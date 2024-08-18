// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.GameCenterDetails.WithID {
    public var gameCenterAchievements: GameCenterAchievements {
        GameCenterAchievements(path: path + "/gameCenterAchievements")
    }

    public struct GameCenterAchievements {
        /// Path: `/v1/gameCenterDetails/{id}/gameCenterAchievements`
        public let path: String

        public func get(filterArchived: [String]? = nil, filterReferenceName: [String]? = nil, filterID: [String]? = nil, fieldsGameCenterAchievementReleases: [FieldsGameCenterAchievementReleases]? = nil, fieldsGameCenterGroups: [FieldsGameCenterGroups]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails]? = nil, fieldsGameCenterAchievementLocalizations: [FieldsGameCenterAchievementLocalizations]? = nil, fieldsGameCenterAchievements: [FieldsGameCenterAchievements]? = nil, limit: Int? = nil, limitLocalizations: Int? = nil, limitReleases: Int? = nil, include: [Include]? = nil) -> Request<AppStoreAPI.GameCenterAchievementsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterArchived, filterReferenceName, filterID, fieldsGameCenterAchievementReleases, fieldsGameCenterGroups, fieldsGameCenterDetails, fieldsGameCenterAchievementLocalizations, fieldsGameCenterAchievements, limit, limitLocalizations, limitReleases, include), id: "gameCenterDetails-gameCenterAchievements-get_to_many_related")
        }

        private func makeGetQuery(_ filterArchived: [String]?, _ filterReferenceName: [String]?, _ filterID: [String]?, _ fieldsGameCenterAchievementReleases: [FieldsGameCenterAchievementReleases]?, _ fieldsGameCenterGroups: [FieldsGameCenterGroups]?, _ fieldsGameCenterDetails: [FieldsGameCenterDetails]?, _ fieldsGameCenterAchievementLocalizations: [FieldsGameCenterAchievementLocalizations]?, _ fieldsGameCenterAchievements: [FieldsGameCenterAchievements]?, _ limit: Int?, _ limitLocalizations: Int?, _ limitReleases: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterArchived, forKey: "filter[archived]")
            encoder.encode(filterReferenceName, forKey: "filter[referenceName]")
            encoder.encode(filterID, forKey: "filter[id]")
            encoder.encode(fieldsGameCenterAchievementReleases, forKey: "fields[gameCenterAchievementReleases]")
            encoder.encode(fieldsGameCenterGroups, forKey: "fields[gameCenterGroups]")
            encoder.encode(fieldsGameCenterDetails, forKey: "fields[gameCenterDetails]")
            encoder.encode(fieldsGameCenterAchievementLocalizations, forKey: "fields[gameCenterAchievementLocalizations]")
            encoder.encode(fieldsGameCenterAchievements, forKey: "fields[gameCenterAchievements]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(limitLocalizations, forKey: "limit[localizations]")
            encoder.encode(limitReleases, forKey: "limit[releases]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsGameCenterAchievementReleases: String, CaseIterable, Codable, Sendable {
            case gameCenterAchievement
            case gameCenterDetail
            case live
        }

        public enum FieldsGameCenterGroups: String, CaseIterable, Codable, Sendable {
            case gameCenterAchievements
            case gameCenterDetails
            case gameCenterLeaderboardSets
            case gameCenterLeaderboards
            case referenceName
        }

        public enum FieldsGameCenterDetails: String, CaseIterable, Codable, Sendable {
            case achievementReleases
            case app
            case arcadeEnabled
            case challengeEnabled
            case defaultGroupLeaderboard
            case defaultLeaderboard
            case gameCenterAchievements
            case gameCenterAppVersions
            case gameCenterGroup
            case gameCenterLeaderboardSets
            case gameCenterLeaderboards
            case leaderboardReleases
            case leaderboardSetReleases
        }

        public enum FieldsGameCenterAchievementLocalizations: String, CaseIterable, Codable, Sendable {
            case afterEarnedDescription
            case beforeEarnedDescription
            case gameCenterAchievement
            case gameCenterAchievementImage
            case locale
            case name
        }

        public enum FieldsGameCenterAchievements: String, CaseIterable, Codable, Sendable {
            case archived
            case gameCenterDetail
            case gameCenterGroup
            case groupAchievement
            case localizations
            case points
            case referenceName
            case releases
            case repeatable
            case showBeforeEarned
            case vendorIdentifier
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case gameCenterDetail
            case gameCenterGroup
            case groupAchievement
            case localizations
            case releases
        }
    }
}
