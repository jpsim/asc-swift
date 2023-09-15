// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.GameCenterDetails.WithID {
    public var gameCenterGroup: GameCenterGroup {
        GameCenterGroup(path: path + "/gameCenterGroup")
    }

    public struct GameCenterGroup {
        /// Path: `/v1/gameCenterDetails/{id}/gameCenterGroup`
        public let path: String

        public func get(fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets]? = nil, fieldsGameCenterGroups: [FieldsGameCenterGroups]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards]? = nil, fieldsGameCenterAchievements: [FieldsGameCenterAchievements]? = nil, limitGameCenterDetails: Int? = nil, limitGameCenterLeaderboards: Int? = nil, limitGameCenterLeaderboardSets: Int? = nil, limitGameCenterAchievements: Int? = nil, include: [Include]? = nil) -> Request<_Specification.GameCenterGroupResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsGameCenterLeaderboardSets, fieldsGameCenterGroups, fieldsGameCenterDetails, fieldsGameCenterLeaderboards, fieldsGameCenterAchievements, limitGameCenterDetails, limitGameCenterLeaderboards, limitGameCenterLeaderboardSets, limitGameCenterAchievements, include), id: "gameCenterDetails-gameCenterGroup-get_to_one_related")
        }

        private func makeGetQuery(_ fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets]?, _ fieldsGameCenterGroups: [FieldsGameCenterGroups]?, _ fieldsGameCenterDetails: [FieldsGameCenterDetails]?, _ fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards]?, _ fieldsGameCenterAchievements: [FieldsGameCenterAchievements]?, _ limitGameCenterDetails: Int?, _ limitGameCenterLeaderboards: Int?, _ limitGameCenterLeaderboardSets: Int?, _ limitGameCenterAchievements: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsGameCenterLeaderboardSets, forKey: "fields[gameCenterLeaderboardSets]")
            encoder.encode(fieldsGameCenterGroups, forKey: "fields[gameCenterGroups]")
            encoder.encode(fieldsGameCenterDetails, forKey: "fields[gameCenterDetails]")
            encoder.encode(fieldsGameCenterLeaderboards, forKey: "fields[gameCenterLeaderboards]")
            encoder.encode(fieldsGameCenterAchievements, forKey: "fields[gameCenterAchievements]")
            encoder.encode(limitGameCenterDetails, forKey: "limit[gameCenterDetails]")
            encoder.encode(limitGameCenterLeaderboards, forKey: "limit[gameCenterLeaderboards]")
            encoder.encode(limitGameCenterLeaderboardSets, forKey: "limit[gameCenterLeaderboardSets]")
            encoder.encode(limitGameCenterAchievements, forKey: "limit[gameCenterAchievements]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsGameCenterLeaderboardSets: String, Codable, CaseIterable {
            case gameCenterDetail
            case gameCenterGroup
            case gameCenterLeaderboards
            case groupLeaderboardSet
            case localizations
            case referenceName
            case releases
            case vendorIdentifier
        }

        public enum FieldsGameCenterGroups: String, Codable, CaseIterable {
            case gameCenterAchievements
            case gameCenterDetails
            case gameCenterLeaderboardSets
            case gameCenterLeaderboards
            case referenceName
        }

        public enum FieldsGameCenterDetails: String, Codable, CaseIterable {
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

        public enum FieldsGameCenterLeaderboards: String, Codable, CaseIterable {
            case archived
            case defaultFormatter
            case gameCenterDetail
            case gameCenterGroup
            case gameCenterLeaderboardSets
            case groupLeaderboard
            case localizations
            case recurrenceDuration
            case recurrenceRule
            case recurrenceStartDate
            case referenceName
            case releases
            case scoreRangeEnd
            case scoreRangeStart
            case scoreSortType
            case submissionType
            case vendorIdentifier
        }

        public enum FieldsGameCenterAchievements: String, Codable, CaseIterable {
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

        public enum Include: String, Codable, CaseIterable {
            case gameCenterAchievements
            case gameCenterDetails
            case gameCenterLeaderboardSets
            case gameCenterLeaderboards
        }
    }
}
