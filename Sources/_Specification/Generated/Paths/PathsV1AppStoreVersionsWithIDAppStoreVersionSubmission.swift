// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppStoreVersions.WithID {
    public var appStoreVersionSubmission: AppStoreVersionSubmission {
        AppStoreVersionSubmission(path: path + "/appStoreVersionSubmission")
    }

    public struct AppStoreVersionSubmission {
        /// Path: `/v1/appStoreVersions/{id}/appStoreVersionSubmission`
        public let path: String

        public func get(fieldsAppStoreVersionSubmissions: [FieldsAppStoreVersionSubmissions]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions]? = nil, include: [Include]? = nil) -> Request<_Specification.AppStoreVersionSubmissionResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsAppStoreVersionSubmissions, fieldsAppStoreVersions, include), id: "appStoreVersions-appStoreVersionSubmission-get_to_one_related")
        }

        private func makeGetQuery(_ fieldsAppStoreVersionSubmissions: [FieldsAppStoreVersionSubmissions]?, _ fieldsAppStoreVersions: [FieldsAppStoreVersions]?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsAppStoreVersionSubmissions, forKey: "fields[appStoreVersionSubmissions]")
            encoder.encode(fieldsAppStoreVersions, forKey: "fields[appStoreVersions]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsAppStoreVersionSubmissions: String, Codable, CaseIterable {
            case appStoreVersion
        }

        public enum FieldsAppStoreVersions: String, Codable, CaseIterable {
            case ageRatingDeclaration
            case app
            case appClipDefaultExperience
            case appStoreReviewDetail
            case appStoreState
            case appStoreVersionExperiments
            case appStoreVersionExperimentsV2
            case appStoreVersionLocalizations
            case appStoreVersionPhasedRelease
            case appStoreVersionSubmission
            case build
            case copyright
            case createdDate
            case customerReviews
            case downloadable
            case earliestReleaseDate
            case platform
            case releaseType
            case routingAppCoverage
            case versionString
        }

        public enum Include: String, Codable, CaseIterable {
            case appStoreVersion
        }
    }
}
