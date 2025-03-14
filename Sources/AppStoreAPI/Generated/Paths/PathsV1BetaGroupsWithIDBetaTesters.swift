// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.BetaGroups.WithID {
    public var betaTesters: BetaTesters {
        BetaTesters(path: path + "/betaTesters")
    }

    public struct BetaTesters {
        /// Path: `/v1/betaGroups/{id}/betaTesters`
        public let path: String

        public func get(fieldsBetaTesters: [FieldsBetaTesters]? = nil, limit: Int? = nil) -> Request<AppStoreAPI.BetaTestersWithoutIncludesResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsBetaTesters, limit), id: "betaGroups_betaTesters_getToManyRelated")
        }

        private func makeGetQuery(_ fieldsBetaTesters: [FieldsBetaTesters]?, _ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsBetaTesters, forKey: "fields[betaTesters]", explode: false)
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }

        public enum FieldsBetaTesters: String, CaseIterable, Codable, Sendable {
            case firstName
            case lastName
            case email
            case inviteType
            case state
            case apps
            case betaGroups
            case builds
        }
    }
}
