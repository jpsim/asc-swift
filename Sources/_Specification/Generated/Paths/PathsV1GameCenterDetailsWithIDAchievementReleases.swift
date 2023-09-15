// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.GameCenterDetails.WithID {
    public var achievementReleases: AchievementReleases {
        AchievementReleases(path: path + "/achievementReleases")
    }

    public struct AchievementReleases {
        /// Path: `/v1/gameCenterDetails/{id}/achievementReleases`
        public let path: String

        public func get(filterLive: [String]? = nil, filterGameCenterAchievement: [String]? = nil, fieldsGameCenterAchievementReleases: [FieldsGameCenterAchievementReleases]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails]? = nil, fieldsGameCenterAchievements: [FieldsGameCenterAchievements]? = nil, limit: Int? = nil, include: [Include]? = nil) -> Request<_Specification.GameCenterAchievementReleasesResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterLive, filterGameCenterAchievement, fieldsGameCenterAchievementReleases, fieldsGameCenterDetails, fieldsGameCenterAchievements, limit, include), id: "gameCenterDetails-achievementReleases-get_to_many_related")
        }

        private func makeGetQuery(_ filterLive: [String]?, _ filterGameCenterAchievement: [String]?, _ fieldsGameCenterAchievementReleases: [FieldsGameCenterAchievementReleases]?, _ fieldsGameCenterDetails: [FieldsGameCenterDetails]?, _ fieldsGameCenterAchievements: [FieldsGameCenterAchievements]?, _ limit: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterLive, forKey: "filter[live]")
            encoder.encode(filterGameCenterAchievement, forKey: "filter[gameCenterAchievement]")
            encoder.encode(fieldsGameCenterAchievementReleases, forKey: "fields[gameCenterAchievementReleases]")
            encoder.encode(fieldsGameCenterDetails, forKey: "fields[gameCenterDetails]")
            encoder.encode(fieldsGameCenterAchievements, forKey: "fields[gameCenterAchievements]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsGameCenterAchievementReleases: String, Codable, CaseIterable {
            case gameCenterAchievement
            case gameCenterDetail
            case live
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
            case gameCenterAchievement
            case gameCenterDetail
        }
    }
}
