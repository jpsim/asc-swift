// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.AppPriceSchedules.WithID {
    public var automaticPrices: AutomaticPrices {
        AutomaticPrices(path: path + "/automaticPrices")
    }

    public struct AutomaticPrices {
        /// Path: `/v1/appPriceSchedules/{id}/automaticPrices`
        public let path: String

        public func get(filterEndDate: [String]? = nil, filterStartDate: [String]? = nil, filterTerritory: [String]? = nil, fieldsAppPrices: [FieldsAppPrices]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, limit: Int? = nil, include: [Include]? = nil) -> Request<AppStoreAPI.AppPricesV2Response> {
            Request(path: path, method: "GET", query: makeGetQuery(filterEndDate, filterStartDate, filterTerritory, fieldsAppPrices, fieldsAppPricePoints, fieldsTerritories, limit, include), id: "appPriceSchedules-automaticPrices-get_to_many_related")
        }

        private func makeGetQuery(_ filterEndDate: [String]?, _ filterStartDate: [String]?, _ filterTerritory: [String]?, _ fieldsAppPrices: [FieldsAppPrices]?, _ fieldsAppPricePoints: [FieldsAppPricePoints]?, _ fieldsTerritories: [FieldsTerritories]?, _ limit: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterEndDate, forKey: "filter[endDate]")
            encoder.encode(filterStartDate, forKey: "filter[startDate]")
            encoder.encode(filterTerritory, forKey: "filter[territory]")
            encoder.encode(fieldsAppPrices, forKey: "fields[appPrices]")
            encoder.encode(fieldsAppPricePoints, forKey: "fields[appPricePoints]")
            encoder.encode(fieldsTerritories, forKey: "fields[territories]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsAppPrices: String, CaseIterable, Codable, Sendable {
            case appPricePoint
            case endDate
            case manual
            case startDate
            case territory
        }

        public enum FieldsAppPricePoints: String, CaseIterable, Codable, Sendable {
            case app
            case customerPrice
            case equalizations
            case proceeds
            case territory
        }

        public enum FieldsTerritories: String, CaseIterable, Codable, Sendable {
            case currency
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case appPricePoint
            case territory
        }
    }
}
