// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.SubscriptionOfferCodes {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/subscriptionOfferCodes/{id}`
        public let path: String

        public func get(fieldsSubscriptionOfferCodes: [FieldsSubscriptionOfferCodes]? = nil, include: [Include]? = nil, fieldsSubscriptionOfferCodeCustomCodes: [FieldsSubscriptionOfferCodeCustomCodes]? = nil, fieldsSubscriptionOfferCodeOneTimeUseCodes: [FieldsSubscriptionOfferCodeOneTimeUseCodes]? = nil, fieldsSubscriptionOfferCodePrices: [FieldsSubscriptionOfferCodePrices]? = nil, limitCustomCodes: Int? = nil, limitOneTimeUseCodes: Int? = nil, limitPrices: Int? = nil) -> Request<_Specification.SubscriptionOfferCodeResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsSubscriptionOfferCodes, include, fieldsSubscriptionOfferCodeCustomCodes, fieldsSubscriptionOfferCodeOneTimeUseCodes, fieldsSubscriptionOfferCodePrices, limitCustomCodes, limitOneTimeUseCodes, limitPrices), id: "subscriptionOfferCodes-get_instance")
        }

        private func makeGetQuery(_ fieldsSubscriptionOfferCodes: [FieldsSubscriptionOfferCodes]?, _ include: [Include]?, _ fieldsSubscriptionOfferCodeCustomCodes: [FieldsSubscriptionOfferCodeCustomCodes]?, _ fieldsSubscriptionOfferCodeOneTimeUseCodes: [FieldsSubscriptionOfferCodeOneTimeUseCodes]?, _ fieldsSubscriptionOfferCodePrices: [FieldsSubscriptionOfferCodePrices]?, _ limitCustomCodes: Int?, _ limitOneTimeUseCodes: Int?, _ limitPrices: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsSubscriptionOfferCodes, forKey: "fields[subscriptionOfferCodes]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsSubscriptionOfferCodeCustomCodes, forKey: "fields[subscriptionOfferCodeCustomCodes]")
            encoder.encode(fieldsSubscriptionOfferCodeOneTimeUseCodes, forKey: "fields[subscriptionOfferCodeOneTimeUseCodes]")
            encoder.encode(fieldsSubscriptionOfferCodePrices, forKey: "fields[subscriptionOfferCodePrices]")
            encoder.encode(limitCustomCodes, forKey: "limit[customCodes]")
            encoder.encode(limitOneTimeUseCodes, forKey: "limit[oneTimeUseCodes]")
            encoder.encode(limitPrices, forKey: "limit[prices]")
            return encoder.items
        }

        public enum FieldsSubscriptionOfferCodes: String, CaseIterable, Codable, Sendable {
            case active
            case customCodes
            case customerEligibilities
            case duration
            case name
            case numberOfPeriods
            case offerEligibility
            case offerMode
            case oneTimeUseCodes
            case prices
            case subscription
            case totalNumberOfCodes
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case customCodes
            case oneTimeUseCodes
            case prices
            case subscription
        }

        public enum FieldsSubscriptionOfferCodeCustomCodes: String, CaseIterable, Codable, Sendable {
            case active
            case createdDate
            case customCode
            case expirationDate
            case numberOfCodes
            case offerCode
        }

        public enum FieldsSubscriptionOfferCodeOneTimeUseCodes: String, CaseIterable, Codable, Sendable {
            case active
            case createdDate
            case expirationDate
            case numberOfCodes
            case offerCode
            case values
        }

        public enum FieldsSubscriptionOfferCodePrices: String, CaseIterable, Codable, Sendable {
            case subscriptionPricePoint
            case territory
        }

        public func patch(_ body: _Specification.SubscriptionOfferCodeUpdateRequest) -> Request<_Specification.SubscriptionOfferCodeResponse> {
            Request(path: path, method: "PATCH", body: body, id: "subscriptionOfferCodes-update_instance")
        }
    }
}
