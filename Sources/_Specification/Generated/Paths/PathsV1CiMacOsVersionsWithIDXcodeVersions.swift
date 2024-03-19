// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.CiMacOsVersions.WithID {
    public var xcodeVersions: XcodeVersions {
        XcodeVersions(path: path + "/xcodeVersions")
    }

    public struct XcodeVersions {
        /// Path: `/v1/ciMacOsVersions/{id}/xcodeVersions`
        public let path: String

        public func get(fieldsCiXcodeVersions: [FieldsCiXcodeVersions]? = nil, fieldsCiMacOsVersions: [FieldsCiMacOsVersions]? = nil, limit: Int? = nil, limitMacOsVersions: Int? = nil, include: [Include]? = nil) -> Request<_Specification.CiXcodeVersionsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsCiXcodeVersions, fieldsCiMacOsVersions, limit, limitMacOsVersions, include), id: "ciMacOsVersions-xcodeVersions-get_to_many_related")
        }

        private func makeGetQuery(_ fieldsCiXcodeVersions: [FieldsCiXcodeVersions]?, _ fieldsCiMacOsVersions: [FieldsCiMacOsVersions]?, _ limit: Int?, _ limitMacOsVersions: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsCiXcodeVersions, forKey: "fields[ciXcodeVersions]")
            encoder.encode(fieldsCiMacOsVersions, forKey: "fields[ciMacOsVersions]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(limitMacOsVersions, forKey: "limit[macOsVersions]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsCiXcodeVersions: String, CaseIterable, Codable, Sendable {
            case macOsVersions
            case name
            case testDestinations
            case version
        }

        public enum FieldsCiMacOsVersions: String, CaseIterable, Codable, Sendable {
            case name
            case version
            case xcodeVersions
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case macOsVersions
        }
    }
}
