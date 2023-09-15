// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.GameCenterLeaderboardSetMemberLocalizations.WithID {
    public var gameCenterLeaderboard: GameCenterLeaderboard {
        GameCenterLeaderboard(path: path + "/gameCenterLeaderboard")
    }

    public struct GameCenterLeaderboard {
        /// Path: `/v1/gameCenterLeaderboardSetMemberLocalizations/{id}/gameCenterLeaderboard`
        public let path: String

        public func get(fieldsGameCenterLeaderboardLocalizations: [FieldsGameCenterLeaderboardLocalizations]? = nil, fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets]? = nil, fieldsGameCenterGroups: [FieldsGameCenterGroups]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards]? = nil, fieldsGameCenterLeaderboardReleases: [FieldsGameCenterLeaderboardReleases]? = nil, limitGameCenterLeaderboardSets: Int? = nil, limitLocalizations: Int? = nil, limitReleases: Int? = nil, include: [Include]? = nil) -> Request<_Specification.GameCenterLeaderboardResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsGameCenterLeaderboardLocalizations, fieldsGameCenterLeaderboardSets, fieldsGameCenterGroups, fieldsGameCenterDetails, fieldsGameCenterLeaderboards, fieldsGameCenterLeaderboardReleases, limitGameCenterLeaderboardSets, limitLocalizations, limitReleases, include), id: "gameCenterLeaderboardSetMemberLocalizations-gameCenterLeaderboard-get_to_one_related")
        }

        private func makeGetQuery(_ fieldsGameCenterLeaderboardLocalizations: [FieldsGameCenterLeaderboardLocalizations]?, _ fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets]?, _ fieldsGameCenterGroups: [FieldsGameCenterGroups]?, _ fieldsGameCenterDetails: [FieldsGameCenterDetails]?, _ fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards]?, _ fieldsGameCenterLeaderboardReleases: [FieldsGameCenterLeaderboardReleases]?, _ limitGameCenterLeaderboardSets: Int?, _ limitLocalizations: Int?, _ limitReleases: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsGameCenterLeaderboardLocalizations, forKey: "fields[gameCenterLeaderboardLocalizations]")
            encoder.encode(fieldsGameCenterLeaderboardSets, forKey: "fields[gameCenterLeaderboardSets]")
            encoder.encode(fieldsGameCenterGroups, forKey: "fields[gameCenterGroups]")
            encoder.encode(fieldsGameCenterDetails, forKey: "fields[gameCenterDetails]")
            encoder.encode(fieldsGameCenterLeaderboards, forKey: "fields[gameCenterLeaderboards]")
            encoder.encode(fieldsGameCenterLeaderboardReleases, forKey: "fields[gameCenterLeaderboardReleases]")
            encoder.encode(limitGameCenterLeaderboardSets, forKey: "limit[gameCenterLeaderboardSets]")
            encoder.encode(limitLocalizations, forKey: "limit[localizations]")
            encoder.encode(limitReleases, forKey: "limit[releases]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsGameCenterLeaderboardLocalizations: String, Codable, CaseIterable {
            case formatterOverride
            case formatterSuffix
            case formatterSuffixSingular
            case gameCenterLeaderboard
            case gameCenterLeaderboardImage
            case locale
            case name
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

        public enum FieldsGameCenterLeaderboardReleases: String, Codable, CaseIterable {
            case gameCenterDetail
            case gameCenterLeaderboard
            case live
        }

        public enum Include: String, Codable, CaseIterable {
            case gameCenterDetail
            case gameCenterGroup
            case gameCenterLeaderboardSets
            case groupLeaderboard
            case localizations
            case releases
        }
    }
}
