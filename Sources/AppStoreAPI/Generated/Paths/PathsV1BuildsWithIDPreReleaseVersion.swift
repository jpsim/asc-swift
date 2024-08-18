// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.Builds.WithID {
    public var preReleaseVersion: PreReleaseVersion {
        PreReleaseVersion(path: path + "/preReleaseVersion")
    }

    public struct PreReleaseVersion {
        /// Path: `/v1/builds/{id}/preReleaseVersion`
        public let path: String

        public func get(fieldsPreReleaseVersions: [FieldsPreReleaseVersions]? = nil) -> Request<AppStoreAPI.PrereleaseVersionResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsPreReleaseVersions), id: "builds-preReleaseVersion-get_to_one_related")
        }

        private func makeGetQuery(_ fieldsPreReleaseVersions: [FieldsPreReleaseVersions]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsPreReleaseVersions, forKey: "fields[preReleaseVersions]", explode: false)
            return encoder.items
        }

        public enum FieldsPreReleaseVersions: String, CaseIterable, Codable, Sendable {
            case app
            case builds
            case platform
            case version
        }
    }
}
