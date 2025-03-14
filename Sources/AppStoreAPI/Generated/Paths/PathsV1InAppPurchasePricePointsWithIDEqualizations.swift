// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.InAppPurchasePricePoints.WithID {
    public var equalizations: Equalizations {
        Equalizations(path: path + "/equalizations")
    }

    public struct Equalizations {
        /// Path: `/v1/inAppPurchasePricePoints/{id}/equalizations`
        public let path: String

        public func get(filterTerritory: [String]? = nil, filterInAppPurchaseV2: [String]? = nil, fieldsInAppPurchasePricePoints: [FieldsInAppPurchasePricePoints]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, limit: Int? = nil, include: [Include]? = nil) -> Request<AppStoreAPI.InAppPurchasePricePointsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterTerritory, filterInAppPurchaseV2, fieldsInAppPurchasePricePoints, fieldsTerritories, limit, include), id: "inAppPurchasePricePoints_equalizations_getToManyRelated")
        }

        private func makeGetQuery(_ filterTerritory: [String]?, _ filterInAppPurchaseV2: [String]?, _ fieldsInAppPurchasePricePoints: [FieldsInAppPurchasePricePoints]?, _ fieldsTerritories: [FieldsTerritories]?, _ limit: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterTerritory, forKey: "filter[territory]")
            encoder.encode(filterInAppPurchaseV2, forKey: "filter[inAppPurchaseV2]")
            encoder.encode(fieldsInAppPurchasePricePoints, forKey: "fields[inAppPurchasePricePoints]")
            encoder.encode(fieldsTerritories, forKey: "fields[territories]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsInAppPurchasePricePoints: String, CaseIterable, Codable, Sendable {
            case customerPrice
            case proceeds
            case territory
            case equalizations
        }

        public enum FieldsTerritories: String, CaseIterable, Codable, Sendable {
            case currency
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case territory
        }
    }
}
