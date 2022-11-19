// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.Apps.WithID {
    public var subscriptionGracePeriod: SubscriptionGracePeriod {
        SubscriptionGracePeriod(path: path + "/subscriptionGracePeriod")
    }

    public struct SubscriptionGracePeriod {
        /// Path: `/v1/apps/{id}/subscriptionGracePeriod`
        public let path: String

        public func get(fieldsSubscriptionGracePeriods: [FieldsSubscriptionGracePeriods]? = nil) -> Request<AppStoreConnect.SubscriptionGracePeriodResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(fieldsSubscriptionGracePeriods), id: "apps-subscriptionGracePeriod-get_to_one_related")
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
    }
}
