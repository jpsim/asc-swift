// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.CustomerReviews.WithID {
    public var response: Response {
        Response(path: path + "/response")
    }

    public struct Response {
        /// Path: `/v1/customerReviews/{id}/response`
        public let path: String

        public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect.CustomerReviewResponseV1Response> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "customerReviews-response-get_to_one_related")
        }

        public struct GetParameters {
            public var fieldsCustomerReviews: [FieldsCustomerReviews]?
            public var fieldsCustomerReviewResponses: [FieldsCustomerReviewResponses]?
            public var include: [Include]?

            public enum FieldsCustomerReviews: String, Codable, CaseIterable {
                case body
                case createdDate
                case rating
                case response
                case reviewerNickname
                case territory
                case title
            }

            public enum FieldsCustomerReviewResponses: String, Codable, CaseIterable {
                case lastModifiedDate
                case responseBody
                case review
                case state
            }

            public enum Include: String, Codable, CaseIterable {
                case review
            }

            public init(fieldsCustomerReviews: [FieldsCustomerReviews]? = nil, fieldsCustomerReviewResponses: [FieldsCustomerReviewResponses]? = nil, include: [Include]? = nil) {
                self.fieldsCustomerReviews = fieldsCustomerReviews
                self.fieldsCustomerReviewResponses = fieldsCustomerReviewResponses
                self.include = include
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder(explode: false)
                encoder.encode(fieldsCustomerReviews, forKey: "fields[customerReviews]")
                encoder.encode(fieldsCustomerReviewResponses, forKey: "fields[customerReviewResponses]")
                encoder.encode(include, forKey: "include")
                return encoder.items
            }
        }
    }
}
