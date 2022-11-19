// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppStoreVersions.WithID {
    public var appStoreReviewDetail: AppStoreReviewDetail {
        AppStoreReviewDetail(path: path + "/appStoreReviewDetail")
    }

    public struct AppStoreReviewDetail {
        /// Path: `/v1/appStoreVersions/{id}/appStoreReviewDetail`
        public let path: String

        public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect.AppStoreReviewDetailResponse> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "appStoreVersions-appStoreReviewDetail-get_to_one_related")
        }

        public struct GetParameters {
            public var fieldsAppStoreReviewDetails: [FieldsAppStoreReviewDetails]?
            public var fieldsAppStoreVersions: [FieldsAppStoreVersions]?
            public var fieldsAppStoreReviewAttachments: [FieldsAppStoreReviewAttachments]?
            public var limitAppStoreReviewAttachments: Int?
            public var include: [Include]?

            public enum FieldsAppStoreReviewDetails: String, Codable, CaseIterable {
                case appStoreReviewAttachments
                case appStoreVersion
                case contactEmail
                case contactFirstName
                case contactLastName
                case contactPhone
                case demoAccountName
                case demoAccountPassword
                case demoAccountRequired
                case notes
            }

            public enum FieldsAppStoreVersions: String, Codable, CaseIterable {
                case ageRatingDeclaration
                case app
                case appClipDefaultExperience
                case appStoreReviewDetail
                case appStoreState
                case appStoreVersionExperiments
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

            public enum FieldsAppStoreReviewAttachments: String, Codable, CaseIterable {
                case appStoreReviewDetail
                case assetDeliveryState
                case fileName
                case fileSize
                case sourceFileChecksum
                case uploadOperations
                case uploaded
            }

            public enum Include: String, Codable, CaseIterable {
                case appStoreReviewAttachments
                case appStoreVersion
            }

            public init(fieldsAppStoreReviewDetails: [FieldsAppStoreReviewDetails]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions]? = nil, fieldsAppStoreReviewAttachments: [FieldsAppStoreReviewAttachments]? = nil, limitAppStoreReviewAttachments: Int? = nil, include: [Include]? = nil) {
                self.fieldsAppStoreReviewDetails = fieldsAppStoreReviewDetails
                self.fieldsAppStoreVersions = fieldsAppStoreVersions
                self.fieldsAppStoreReviewAttachments = fieldsAppStoreReviewAttachments
                self.limitAppStoreReviewAttachments = limitAppStoreReviewAttachments
                self.include = include
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder(explode: false)
                encoder.encode(fieldsAppStoreReviewDetails, forKey: "fields[appStoreReviewDetails]")
                encoder.encode(fieldsAppStoreVersions, forKey: "fields[appStoreVersions]")
                encoder.encode(fieldsAppStoreReviewAttachments, forKey: "fields[appStoreReviewAttachments]")
                encoder.encode(limitAppStoreReviewAttachments, forKey: "limit[appStoreReviewAttachments]")
                encoder.encode(include, forKey: "include")
                return encoder.items
            }
        }
    }
}
