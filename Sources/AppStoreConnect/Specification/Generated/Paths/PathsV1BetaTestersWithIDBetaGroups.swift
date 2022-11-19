// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.BetaTesters.WithID {
    public var betaGroups: BetaGroups {
        BetaGroups(path: path + "/betaGroups")
    }

    public struct BetaGroups {
        /// Path: `/v1/betaTesters/{id}/betaGroups`
        public let path: String

        public func get(fieldsBetaGroups: [FieldsBetaGroups]? = nil, limit: Int? = nil) -> Request<AppStoreConnect.BetaGroupsResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(fieldsBetaGroups, limit), id: "betaTesters-betaGroups-get_to_many_related")
        }

        private func makeGetQuery(_ fieldsBetaGroups: [FieldsBetaGroups]?, _ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsBetaGroups, forKey: "fields[betaGroups]", explode: false)
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }

        public enum FieldsBetaGroups: String, Codable, CaseIterable {
            case app
            case betaTesters
            case builds
            case createdDate
            case feedbackEnabled
            case hasAccessToAllBuilds
            case iosBuildsAvailableForAppleSiliconMac
            case isInternalGroup
            case name
            case publicLink
            case publicLinkEnabled
            case publicLinkID = "publicLinkId"
            case publicLinkLimit
            case publicLinkLimitEnabled
        }
    }
}
