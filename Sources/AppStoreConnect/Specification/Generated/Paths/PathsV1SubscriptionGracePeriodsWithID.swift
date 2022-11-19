// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.SubscriptionGracePeriods {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/subscriptionGracePeriods/{id}`
        public let path: String

        public func get(fieldsSubscriptionGracePeriods: [FieldsSubscriptionGracePeriods]? = nil) -> Request<AppStoreConnect.SubscriptionGracePeriodResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(fieldsSubscriptionGracePeriods), id: "subscriptionGracePeriods-get_instance")
        }

        private func makeGetQuery(_ fieldsSubscriptionGracePeriods: [FieldsSubscriptionGracePeriods]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsSubscriptionGracePeriods, forKey: "fields[subscriptionGracePeriods]", explode: false)
            return encoder.items
        }

        public enum FieldsSubscriptionGracePeriods: String, Codable, CaseIterable {
            case app
            case optIn
        }

        public func patch(_ body: AppStoreConnect.SubscriptionGracePeriodUpdateRequest) -> Request<AppStoreConnect.SubscriptionGracePeriodResponse> {
            Request(method: "PATCH", url: path, body: body, id: "subscriptionGracePeriods-update_instance")
        }
    }
}
