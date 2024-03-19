// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.SubscriptionAvailabilities.WithID {
    public var availableTerritories: AvailableTerritories {
        AvailableTerritories(path: path + "/availableTerritories")
    }

    public struct AvailableTerritories {
        /// Path: `/v1/subscriptionAvailabilities/{id}/availableTerritories`
        public let path: String

        public func get(fieldsTerritories: [FieldsTerritories]? = nil, limit: Int? = nil) -> Request<_Specification.TerritoriesResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsTerritories, limit), id: "subscriptionAvailabilities-availableTerritories-get_to_many_related")
        }

        private func makeGetQuery(_ fieldsTerritories: [FieldsTerritories]?, _ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsTerritories, forKey: "fields[territories]", explode: false)
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }

        public enum FieldsTerritories: String, CaseIterable, Codable, Sendable {
            case currency
        }
    }
}
