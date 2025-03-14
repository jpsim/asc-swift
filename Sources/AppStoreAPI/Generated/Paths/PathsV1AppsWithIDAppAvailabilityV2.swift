// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.Apps.WithID {
    public var appAvailabilityV2: AppAvailabilityV2 {
        AppAvailabilityV2(path: path + "/appAvailabilityV2")
    }

    public struct AppAvailabilityV2 {
        /// Path: `/v1/apps/{id}/appAvailabilityV2`
        public let path: String

        public func get(fieldsAppAvailabilities: [FieldsAppAvailabilities]? = nil, fieldsTerritoryAvailabilities: [FieldsTerritoryAvailabilities]? = nil, include: [Include]? = nil, limitTerritoryAvailabilities: Int? = nil) -> Request<AppStoreAPI.AppAvailabilityV2Response> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsAppAvailabilities, fieldsTerritoryAvailabilities, include, limitTerritoryAvailabilities), id: "apps_appAvailabilityV2_getToOneRelated")
        }

        private func makeGetQuery(_ fieldsAppAvailabilities: [FieldsAppAvailabilities]?, _ fieldsTerritoryAvailabilities: [FieldsTerritoryAvailabilities]?, _ include: [Include]?, _ limitTerritoryAvailabilities: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsAppAvailabilities, forKey: "fields[appAvailabilities]")
            encoder.encode(fieldsTerritoryAvailabilities, forKey: "fields[territoryAvailabilities]")
            encoder.encode(include, forKey: "include")
            encoder.encode(limitTerritoryAvailabilities, forKey: "limit[territoryAvailabilities]")
            return encoder.items
        }

        public enum FieldsAppAvailabilities: String, CaseIterable, Codable, Sendable {
            case availableInNewTerritories
            case territoryAvailabilities
        }

        public enum FieldsTerritoryAvailabilities: String, CaseIterable, Codable, Sendable {
            case available
            case releaseDate
            case preOrderEnabled
            case preOrderPublishDate
            case contentStatuses
            case territory
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case territoryAvailabilities
        }
    }
}
