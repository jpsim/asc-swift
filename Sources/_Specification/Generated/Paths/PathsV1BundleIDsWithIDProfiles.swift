// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.BundleIDs.WithID {
    public var profiles: Profiles {
        Profiles(path: path + "/profiles")
    }

    public struct Profiles {
        /// Path: `/v1/bundleIds/{id}/profiles`
        public let path: String

        public func get(fieldsProfiles: [FieldsProfiles]? = nil, limit: Int? = nil) -> Request<_Specification.ProfilesResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsProfiles, limit), id: "bundleIds-profiles-get_to_many_related")
        }

        private func makeGetQuery(_ fieldsProfiles: [FieldsProfiles]?, _ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsProfiles, forKey: "fields[profiles]", explode: false)
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }

        public enum FieldsProfiles: String, CaseIterable, Codable, Sendable {
            case bundleID = "bundleId"
            case certificates
            case createdDate
            case devices
            case expirationDate
            case name
            case platform
            case profileContent
            case profileState
            case profileType
            case uuid
        }
    }
}
