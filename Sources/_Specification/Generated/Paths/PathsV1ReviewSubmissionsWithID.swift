// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.ReviewSubmissions {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/reviewSubmissions/{id}`
        public let path: String

        public func get(fieldsReviewSubmissions: [FieldsReviewSubmissions]? = nil, include: [Include]? = nil, fieldsReviewSubmissionItems: [FieldsReviewSubmissionItems]? = nil, limitItems: Int? = nil) -> Request<_Specification.ReviewSubmissionResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsReviewSubmissions, include, fieldsReviewSubmissionItems, limitItems), id: "reviewSubmissions-get_instance")
        }

        private func makeGetQuery(_ fieldsReviewSubmissions: [FieldsReviewSubmissions]?, _ include: [Include]?, _ fieldsReviewSubmissionItems: [FieldsReviewSubmissionItems]?, _ limitItems: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsReviewSubmissions, forKey: "fields[reviewSubmissions]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsReviewSubmissionItems, forKey: "fields[reviewSubmissionItems]")
            encoder.encode(limitItems, forKey: "limit[items]")
            return encoder.items
        }

        public enum FieldsReviewSubmissions: String, CaseIterable, Codable, Sendable {
            case app
            case appStoreVersionForReview
            case canceled
            case items
            case lastUpdatedByActor
            case platform
            case state
            case submitted
            case submittedByActor
            case submittedDate
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case app
            case appStoreVersionForReview
            case items
            case lastUpdatedByActor
            case submittedByActor
        }

        public enum FieldsReviewSubmissionItems: String, CaseIterable, Codable, Sendable {
            case appCustomProductPageVersion
            case appEvent
            case appStoreVersion
            case appStoreVersionExperiment
            case appStoreVersionExperimentV2
            case removed
            case resolved
            case reviewSubmission
            case state
        }

        public func patch(_ body: _Specification.ReviewSubmissionUpdateRequest) -> Request<_Specification.ReviewSubmissionResponse> {
            Request(path: path, method: "PATCH", body: body, id: "reviewSubmissions-update_instance")
        }
    }
}
