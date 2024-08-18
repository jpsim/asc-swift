// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.InAppPurchases {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/inAppPurchases/{id}`
        public let path: String

        public func get(fieldsInAppPurchases: [FieldsInAppPurchases]? = nil, include: [Include]? = nil, limitApps: Int? = nil) -> Request<AppStoreAPI.InAppPurchaseResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsInAppPurchases, include, limitApps), id: "inAppPurchases-get_instance")
        }

        private func makeGetQuery(_ fieldsInAppPurchases: [FieldsInAppPurchases]?, _ include: [Include]?, _ limitApps: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsInAppPurchases, forKey: "fields[inAppPurchases]")
            encoder.encode(include, forKey: "include")
            encoder.encode(limitApps, forKey: "limit[apps]")
            return encoder.items
        }

        public enum FieldsInAppPurchases: String, CaseIterable, Codable, Sendable {
            case apps
            case inAppPurchaseType
            case productID = "productId"
            case referenceName
            case state
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case apps
        }
    }
}
