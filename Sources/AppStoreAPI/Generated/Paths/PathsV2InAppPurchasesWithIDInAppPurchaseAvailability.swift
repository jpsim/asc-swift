// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V2.InAppPurchases.WithID {
    public var inAppPurchaseAvailability: InAppPurchaseAvailability {
        InAppPurchaseAvailability(path: path + "/inAppPurchaseAvailability")
    }

    public struct InAppPurchaseAvailability {
        /// Path: `/v2/inAppPurchases/{id}/inAppPurchaseAvailability`
        public let path: String

        public func get(fieldsInAppPurchaseAvailabilities: [FieldsInAppPurchaseAvailabilities]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, limitAvailableTerritories: Int? = nil, include: [Include]? = nil) -> Request<AppStoreAPI.InAppPurchaseAvailabilityResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsInAppPurchaseAvailabilities, fieldsTerritories, limitAvailableTerritories, include), id: "inAppPurchasesV2-inAppPurchaseAvailability-get_to_one_related")
        }

        private func makeGetQuery(_ fieldsInAppPurchaseAvailabilities: [FieldsInAppPurchaseAvailabilities]?, _ fieldsTerritories: [FieldsTerritories]?, _ limitAvailableTerritories: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsInAppPurchaseAvailabilities, forKey: "fields[inAppPurchaseAvailabilities]")
            encoder.encode(fieldsTerritories, forKey: "fields[territories]")
            encoder.encode(limitAvailableTerritories, forKey: "limit[availableTerritories]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsInAppPurchaseAvailabilities: String, CaseIterable, Codable, Sendable {
            case availableInNewTerritories
            case availableTerritories
            case inAppPurchase
        }

        public enum FieldsTerritories: String, CaseIterable, Codable, Sendable {
            case currency
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case availableTerritories
        }
    }
}
