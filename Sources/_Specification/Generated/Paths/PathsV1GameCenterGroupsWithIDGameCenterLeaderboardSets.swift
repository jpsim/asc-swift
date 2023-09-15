// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.GameCenterGroups.WithID {
    public var gameCenterLeaderboardSets: GameCenterLeaderboardSets {
        GameCenterLeaderboardSets(path: path + "/gameCenterLeaderboardSets")
    }

    public struct GameCenterLeaderboardSets {
        /// Path: `/v1/gameCenterGroups/{id}/gameCenterLeaderboardSets`
        public let path: String

        public func get(filterReferenceName: [String]? = nil, filterID: [String]? = nil, fieldsGameCenterLeaderboardSetLocalizations: [FieldsGameCenterLeaderboardSetLocalizations]? = nil, fieldsGameCenterLeaderboardSetReleases: [FieldsGameCenterLeaderboardSetReleases]? = nil, fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets]? = nil, fieldsGameCenterGroups: [FieldsGameCenterGroups]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards]? = nil, limit: Int? = nil, limitLocalizations: Int? = nil, limitGameCenterLeaderboards: Int? = nil, limitReleases: Int? = nil, include: [Include]? = nil) -> Request<_Specification.GameCenterLeaderboardSetsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterReferenceName, filterID, fieldsGameCenterLeaderboardSetLocalizations, fieldsGameCenterLeaderboardSetReleases, fieldsGameCenterLeaderboardSets, fieldsGameCenterGroups, fieldsGameCenterDetails, fieldsGameCenterLeaderboards, limit, limitLocalizations, limitGameCenterLeaderboards, limitReleases, include), id: "gameCenterGroups-gameCenterLeaderboardSets-get_to_many_related")
        }

        private func makeGetQuery(_ filterReferenceName: [String]?, _ filterID: [String]?, _ fieldsGameCenterLeaderboardSetLocalizations: [FieldsGameCenterLeaderboardSetLocalizations]?, _ fieldsGameCenterLeaderboardSetReleases: [FieldsGameCenterLeaderboardSetReleases]?, _ fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets]?, _ fieldsGameCenterGroups: [FieldsGameCenterGroups]?, _ fieldsGameCenterDetails: [FieldsGameCenterDetails]?, _ fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards]?, _ limit: Int?, _ limitLocalizations: Int?, _ limitGameCenterLeaderboards: Int?, _ limitReleases: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterReferenceName, forKey: "filter[referenceName]")
            encoder.encode(filterID, forKey: "filter[id]")
            encoder.encode(fieldsGameCenterLeaderboardSetLocalizations, forKey: "fields[gameCenterLeaderboardSetLocalizations]")
            encoder.encode(fieldsGameCenterLeaderboardSetReleases, forKey: "fields[gameCenterLeaderboardSetReleases]")
            encoder.encode(fieldsGameCenterLeaderboardSets, forKey: "fields[gameCenterLeaderboardSets]")
            encoder.encode(fieldsGameCenterGroups, forKey: "fields[gameCenterGroups]")
            encoder.encode(fieldsGameCenterDetails, forKey: "fields[gameCenterDetails]")
            encoder.encode(fieldsGameCenterLeaderboards, forKey: "fields[gameCenterLeaderboards]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(limitLocalizations, forKey: "limit[localizations]")
            encoder.encode(limitGameCenterLeaderboards, forKey: "limit[gameCenterLeaderboards]")
            encoder.encode(limitReleases, forKey: "limit[releases]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsGameCenterLeaderboardSetLocalizations: String, Codable, CaseIterable {
            case gameCenterLeaderboardSet
            case gameCenterLeaderboardSetImage
            case locale
            case name
        }

        public enum FieldsGameCenterLeaderboardSetReleases: String, Codable, CaseIterable {
            case gameCenterDetail
            case gameCenterLeaderboardSet
            case live
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

        public enum Include: String, Codable, CaseIterable {
            case gameCenterDetail
            case gameCenterGroup
            case gameCenterLeaderboards
            case groupLeaderboardSet
            case localizations
            case releases
        }
    }
}
