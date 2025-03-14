// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.Apps.WithID {
    public var subscriptionGroups: SubscriptionGroups {
        SubscriptionGroups(path: path + "/subscriptionGroups")
    }

    public struct SubscriptionGroups {
        /// Path: `/v1/apps/{id}/subscriptionGroups`
        public let path: String

        public func get(filterReferenceName: [String]? = nil, filterSubscriptionsState: [FilterSubscriptionsState]? = nil, sort: [Sort]? = nil, fieldsSubscriptionGroups: [FieldsSubscriptionGroups]? = nil, fieldsSubscriptions: [FieldsSubscriptions]? = nil, fieldsSubscriptionGroupLocalizations: [FieldsSubscriptionGroupLocalizations]? = nil, limit: Int? = nil, include: [Include]? = nil, limitSubscriptions: Int? = nil, limitSubscriptionGroupLocalizations: Int? = nil) -> Request<AppStoreAPI.SubscriptionGroupsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterReferenceName, filterSubscriptionsState, sort, fieldsSubscriptionGroups, fieldsSubscriptions, fieldsSubscriptionGroupLocalizations, limit, include, limitSubscriptions, limitSubscriptionGroupLocalizations), id: "apps_subscriptionGroups_getToManyRelated")
        }

        private func makeGetQuery(_ filterReferenceName: [String]?, _ filterSubscriptionsState: [FilterSubscriptionsState]?, _ sort: [Sort]?, _ fieldsSubscriptionGroups: [FieldsSubscriptionGroups]?, _ fieldsSubscriptions: [FieldsSubscriptions]?, _ fieldsSubscriptionGroupLocalizations: [FieldsSubscriptionGroupLocalizations]?, _ limit: Int?, _ include: [Include]?, _ limitSubscriptions: Int?, _ limitSubscriptionGroupLocalizations: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterReferenceName, forKey: "filter[referenceName]")
            encoder.encode(filterSubscriptionsState, forKey: "filter[subscriptions.state]")
            encoder.encode(sort, forKey: "sort")
            encoder.encode(fieldsSubscriptionGroups, forKey: "fields[subscriptionGroups]")
            encoder.encode(fieldsSubscriptions, forKey: "fields[subscriptions]")
            encoder.encode(fieldsSubscriptionGroupLocalizations, forKey: "fields[subscriptionGroupLocalizations]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            encoder.encode(limitSubscriptions, forKey: "limit[subscriptions]")
            encoder.encode(limitSubscriptionGroupLocalizations, forKey: "limit[subscriptionGroupLocalizations]")
            return encoder.items
        }

        public enum FilterSubscriptionsState: String, CaseIterable, Codable, Sendable {
            case missingMetadata = "MISSING_METADATA"
            case readyToSubmit = "READY_TO_SUBMIT"
            case waitingForReview = "WAITING_FOR_REVIEW"
            case inReview = "IN_REVIEW"
            case developerActionNeeded = "DEVELOPER_ACTION_NEEDED"
            case pendingBinaryApproval = "PENDING_BINARY_APPROVAL"
            case approved = "APPROVED"
            case developerRemovedFromSale = "DEVELOPER_REMOVED_FROM_SALE"
            case removedFromSale = "REMOVED_FROM_SALE"
            case rejected = "REJECTED"
        }

        public enum Sort: String, CaseIterable, Codable, Sendable {
            case referenceName
            case minusReferenceName = "-referenceName"
        }

        public enum FieldsSubscriptionGroups: String, CaseIterable, Codable, Sendable {
            case referenceName
            case subscriptions
            case subscriptionGroupLocalizations
        }

        public enum FieldsSubscriptions: String, CaseIterable, Codable, Sendable {
            case name
            case productID = "productId"
            case familySharable
            case state
            case subscriptionPeriod
            case reviewNote
            case groupLevel
            case subscriptionLocalizations
            case appStoreReviewScreenshot
            case group
            case introductoryOffers
            case promotionalOffers
            case offerCodes
            case prices
            case pricePoints
            case promotedPurchase
            case subscriptionAvailability
            case winBackOffers
            case images
        }

        public enum FieldsSubscriptionGroupLocalizations: String, CaseIterable, Codable, Sendable {
            case name
            case customAppName
            case locale
            case state
            case subscriptionGroup
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case subscriptions
            case subscriptionGroupLocalizations
        }
    }
}
