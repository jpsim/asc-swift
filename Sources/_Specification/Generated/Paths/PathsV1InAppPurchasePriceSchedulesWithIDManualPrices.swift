// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.InAppPurchasePriceSchedules.WithID {
    public var manualPrices: ManualPrices {
        ManualPrices(path: path + "/manualPrices")
    }

    public struct ManualPrices {
        /// Path: `/v1/inAppPurchasePriceSchedules/{id}/manualPrices`
        public let path: String

        public func get(filterTerritory: [String]? = nil, fieldsInAppPurchasePricePoints: [FieldsInAppPurchasePricePoints]? = nil, fieldsInAppPurchasePrices: [FieldsInAppPurchasePrices]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, limit: Int? = nil, include: [Include]? = nil) -> Request<_Specification.InAppPurchasePricesResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterTerritory, fieldsInAppPurchasePricePoints, fieldsInAppPurchasePrices, fieldsTerritories, limit, include), id: "inAppPurchasePriceSchedules-manualPrices-get_to_many_related")
        }

        private func makeGetQuery(_ filterTerritory: [String]?, _ fieldsInAppPurchasePricePoints: [FieldsInAppPurchasePricePoints]?, _ fieldsInAppPurchasePrices: [FieldsInAppPurchasePrices]?, _ fieldsTerritories: [FieldsTerritories]?, _ limit: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterTerritory, forKey: "filter[territory]")
            encoder.encode(fieldsInAppPurchasePricePoints, forKey: "fields[inAppPurchasePricePoints]")
            encoder.encode(fieldsInAppPurchasePrices, forKey: "fields[inAppPurchasePrices]")
            encoder.encode(fieldsTerritories, forKey: "fields[territories]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsInAppPurchasePricePoints: String, CaseIterable, Codable, Sendable {
            case customerPrice
            case inAppPurchaseV2
            case priceTier
            case proceeds
            case territory
        }

        public enum FieldsInAppPurchasePrices: String, CaseIterable, Codable, Sendable {
            case endDate
            case inAppPurchasePricePoint
            case inAppPurchaseV2
            case manual
            case startDate
            case territory
        }

        public enum FieldsTerritories: String, CaseIterable, Codable, Sendable {
            case currency
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case inAppPurchasePricePoint
            case territory
        }
    }
}
