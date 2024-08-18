// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.GameCenterLeaderboards.WithID {
    public var localizations: Localizations {
        Localizations(path: path + "/localizations")
    }

    public struct Localizations {
        /// Path: `/v1/gameCenterLeaderboards/{id}/localizations`
        public let path: String

        public func get(fieldsGameCenterLeaderboardLocalizations: [FieldsGameCenterLeaderboardLocalizations]? = nil, fieldsGameCenterLeaderboardImages: [FieldsGameCenterLeaderboardImages]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards]? = nil, limit: Int? = nil, include: [Include]? = nil) -> Request<AppStoreAPI.GameCenterLeaderboardLocalizationsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsGameCenterLeaderboardLocalizations, fieldsGameCenterLeaderboardImages, fieldsGameCenterLeaderboards, limit, include), id: "gameCenterLeaderboards-localizations-get_to_many_related")
        }

        private func makeGetQuery(_ fieldsGameCenterLeaderboardLocalizations: [FieldsGameCenterLeaderboardLocalizations]?, _ fieldsGameCenterLeaderboardImages: [FieldsGameCenterLeaderboardImages]?, _ fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards]?, _ limit: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsGameCenterLeaderboardLocalizations, forKey: "fields[gameCenterLeaderboardLocalizations]")
            encoder.encode(fieldsGameCenterLeaderboardImages, forKey: "fields[gameCenterLeaderboardImages]")
            encoder.encode(fieldsGameCenterLeaderboards, forKey: "fields[gameCenterLeaderboards]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsGameCenterLeaderboardLocalizations: String, CaseIterable, Codable, Sendable {
            case formatterOverride
            case formatterSuffix
            case formatterSuffixSingular
            case gameCenterLeaderboard
            case gameCenterLeaderboardImage
            case locale
            case name
        }

        public enum FieldsGameCenterLeaderboardImages: String, CaseIterable, Codable, Sendable {
            case assetDeliveryState
            case fileName
            case fileSize
            case gameCenterLeaderboardLocalization
            case imageAsset
            case uploadOperations
            case uploaded
        }

        public enum FieldsGameCenterLeaderboards: String, CaseIterable, Codable, Sendable {
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

        public enum Include: String, CaseIterable, Codable, Sendable {
            case gameCenterLeaderboard
            case gameCenterLeaderboardImage
        }
    }
}
