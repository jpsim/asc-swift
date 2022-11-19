// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.InAppPurchaseLocalizations {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/inAppPurchaseLocalizations/{id}`
        public let path: String

        public func get(fieldsInAppPurchaseLocalizations: [FieldsInAppPurchaseLocalizations]? = nil, include: [Include]? = nil) -> Request<AppStoreConnect.InAppPurchaseLocalizationResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(fieldsInAppPurchaseLocalizations, include), id: "inAppPurchaseLocalizations-get_instance")
        }

        private func makeGetQuery(_ fieldsInAppPurchaseLocalizations: [FieldsInAppPurchaseLocalizations]?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsInAppPurchaseLocalizations, forKey: "fields[inAppPurchaseLocalizations]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsInAppPurchaseLocalizations: String, Codable, CaseIterable {
            case description
            case inAppPurchaseV2
            case locale
            case name
            case state
        }

        public enum Include: String, Codable, CaseIterable {
            case inAppPurchaseV2
        }

        public func patch(_ body: AppStoreConnect.InAppPurchaseLocalizationUpdateRequest) -> Request<AppStoreConnect.InAppPurchaseLocalizationResponse> {
            Request(method: "PATCH", url: path, body: body, id: "inAppPurchaseLocalizations-update_instance")
        }

        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "inAppPurchaseLocalizations-delete_instance")
        }
    }
}
