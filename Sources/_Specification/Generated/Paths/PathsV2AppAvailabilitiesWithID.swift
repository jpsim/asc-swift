// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V2.AppAvailabilities {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v2/appAvailabilities/{id}`
        public let path: String

        public func get(fieldsAppAvailabilities: [FieldsAppAvailabilities]? = nil, include: [Include]? = nil, fieldsTerritoryAvailabilities: [FieldsTerritoryAvailabilities]? = nil, limitTerritoryAvailabilities: Int? = nil) -> Request<_Specification.AppAvailabilityV2Response> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsAppAvailabilities, include, fieldsTerritoryAvailabilities, limitTerritoryAvailabilities), id: "appAvailabilitiesV2-get_instance")
        }

        private func makeGetQuery(_ fieldsAppAvailabilities: [FieldsAppAvailabilities]?, _ include: [Include]?, _ fieldsTerritoryAvailabilities: [FieldsTerritoryAvailabilities]?, _ limitTerritoryAvailabilities: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsAppAvailabilities, forKey: "fields[appAvailabilities]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsTerritoryAvailabilities, forKey: "fields[territoryAvailabilities]")
            encoder.encode(limitTerritoryAvailabilities, forKey: "limit[territoryAvailabilities]")
            return encoder.items
        }

        public enum FieldsAppAvailabilities: String, Codable, CaseIterable {
            case app
            case availableInNewTerritories
            case territoryAvailabilities
        }

        public enum Include: String, Codable, CaseIterable {
            case territoryAvailabilities
        }

        public enum FieldsTerritoryAvailabilities: String, Codable, CaseIterable {
            case available
            case contentStatuses
            case preOrderEnabled
            case preOrderPublishDate
            case releaseDate
            case territory
        }
    }
}
