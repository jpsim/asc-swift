// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.GameCenterAppVersions.WithID {
    public var compatibilityVersions: CompatibilityVersions {
        CompatibilityVersions(path: path + "/compatibilityVersions")
    }

    public struct CompatibilityVersions {
        /// Path: `/v1/gameCenterAppVersions/{id}/compatibilityVersions`
        public let path: String

        public func get(filterEnabled: [String]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions]? = nil, fieldsGameCenterAppVersions: [FieldsGameCenterAppVersions]? = nil, limit: Int? = nil, limitCompatibilityVersions: Int? = nil, include: [Include]? = nil) -> Request<_Specification.GameCenterAppVersionsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterEnabled, fieldsAppStoreVersions, fieldsGameCenterAppVersions, limit, limitCompatibilityVersions, include), id: "gameCenterAppVersions-compatibilityVersions-get_to_many_related")
        }

        private func makeGetQuery(_ filterEnabled: [String]?, _ fieldsAppStoreVersions: [FieldsAppStoreVersions]?, _ fieldsGameCenterAppVersions: [FieldsGameCenterAppVersions]?, _ limit: Int?, _ limitCompatibilityVersions: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterEnabled, forKey: "filter[enabled]")
            encoder.encode(fieldsAppStoreVersions, forKey: "fields[appStoreVersions]")
            encoder.encode(fieldsGameCenterAppVersions, forKey: "fields[gameCenterAppVersions]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(limitCompatibilityVersions, forKey: "limit[compatibilityVersions]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsAppStoreVersions: String, CaseIterable, Codable, Sendable {
            case ageRatingDeclaration
            case alternativeDistributionPackage
            case app
            case appClipDefaultExperience
            case appStoreReviewDetail
            case appStoreState
            case appStoreVersionExperiments
            case appStoreVersionExperimentsV2
            case appStoreVersionLocalizations
            case appStoreVersionPhasedRelease
            case appStoreVersionSubmission
            case appVersionState
            case build
            case copyright
            case createdDate
            case customerReviews
            case downloadable
            case earliestReleaseDate
            case platform
            case releaseType
            case reviewType
            case routingAppCoverage
            case versionString
        }

        public enum FieldsGameCenterAppVersions: String, CaseIterable, Codable, Sendable {
            case appStoreVersion
            case compatibilityVersions
            case enabled
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case appStoreVersion
            case compatibilityVersions
        }
    }
}
