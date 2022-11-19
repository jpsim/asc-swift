// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var ciMacOsVersions: CiMacOsVersions {
        CiMacOsVersions(path: path + "/ciMacOsVersions")
    }

    public struct CiMacOsVersions {
        /// Path: `/v1/ciMacOsVersions`
        public let path: String

        public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect.CiMacOsVersionsResponse> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "ciMacOsVersions-get_collection")
        }

        public struct GetParameters {
            public var fieldsCiMacOsVersions: [FieldsCiMacOsVersions]?
            public var limit: Int?
            public var include: [Include]?
            public var fieldsCiXcodeVersions: [FieldsCiXcodeVersions]?
            public var limitXcodeVersions: Int?

            public enum FieldsCiMacOsVersions: String, Codable, CaseIterable {
                case name
                case version
                case xcodeVersions
            }

            public enum Include: String, Codable, CaseIterable {
                case xcodeVersions
            }

            public enum FieldsCiXcodeVersions: String, Codable, CaseIterable {
                case macOsVersions
                case name
                case testDestinations
                case version
            }

            public init(fieldsCiMacOsVersions: [FieldsCiMacOsVersions]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsCiXcodeVersions: [FieldsCiXcodeVersions]? = nil, limitXcodeVersions: Int? = nil) {
                self.fieldsCiMacOsVersions = fieldsCiMacOsVersions
                self.limit = limit
                self.include = include
                self.fieldsCiXcodeVersions = fieldsCiXcodeVersions
                self.limitXcodeVersions = limitXcodeVersions
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder(explode: false)
                encoder.encode(fieldsCiMacOsVersions, forKey: "fields[ciMacOsVersions]")
                encoder.encode(limit, forKey: "limit")
                encoder.encode(include, forKey: "include")
                encoder.encode(fieldsCiXcodeVersions, forKey: "fields[ciXcodeVersions]")
                encoder.encode(limitXcodeVersions, forKey: "limit[xcodeVersions]")
                return encoder.items
            }
        }
    }
}
