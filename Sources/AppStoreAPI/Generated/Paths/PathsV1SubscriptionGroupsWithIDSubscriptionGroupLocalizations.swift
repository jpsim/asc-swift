// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.SubscriptionGroups.WithID {
    public var subscriptionGroupLocalizations: SubscriptionGroupLocalizations {
        SubscriptionGroupLocalizations(path: path + "/subscriptionGroupLocalizations")
    }

    public struct SubscriptionGroupLocalizations {
        /// Path: `/v1/subscriptionGroups/{id}/subscriptionGroupLocalizations`
        public let path: String

        public func get(fieldsSubscriptionGroups: [FieldsSubscriptionGroups]? = nil, fieldsSubscriptionGroupLocalizations: [FieldsSubscriptionGroupLocalizations]? = nil, limit: Int? = nil, include: [Include]? = nil) -> Request<AppStoreAPI.SubscriptionGroupLocalizationsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsSubscriptionGroups, fieldsSubscriptionGroupLocalizations, limit, include), id: "subscriptionGroups-subscriptionGroupLocalizations-get_to_many_related")
        }

        private func makeGetQuery(_ fieldsSubscriptionGroups: [FieldsSubscriptionGroups]?, _ fieldsSubscriptionGroupLocalizations: [FieldsSubscriptionGroupLocalizations]?, _ limit: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsSubscriptionGroups, forKey: "fields[subscriptionGroups]")
            encoder.encode(fieldsSubscriptionGroupLocalizations, forKey: "fields[subscriptionGroupLocalizations]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsSubscriptionGroups: String, CaseIterable, Codable, Sendable {
            case app
            case referenceName
            case subscriptionGroupLocalizations
            case subscriptions
        }

        public enum FieldsSubscriptionGroupLocalizations: String, CaseIterable, Codable, Sendable {
            case customAppName
            case locale
            case name
            case state
            case subscriptionGroup
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case subscriptionGroup
        }
    }
}
