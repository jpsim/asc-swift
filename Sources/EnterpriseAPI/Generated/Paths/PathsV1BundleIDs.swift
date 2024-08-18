// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources {
    public static var bundleIDs: BundleIDs {
        BundleIDs(path: "/v1/bundleIds")
    }

    public struct BundleIDs {
        /// Path: `/v1/bundleIds`
        public let path: String

        /// List Bundle Ids
        public func get(filterIdentifier: [String]? = nil, filterName: [String]? = nil, filterPlatform: [FilterPlatform]? = nil, filterSeedID: [String]? = nil, filterID: [String]? = nil, sort: [Sort]? = nil, fieldsBundleIDs: [FieldsBundleIDs]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsBundleIDCapabilities: [FieldsBundleIDCapabilities]? = nil, fieldsProfiles: [FieldsProfiles]? = nil, limitBundleIDCapabilities: Int? = nil, limitProfiles: Int? = nil) -> Request<EnterpriseAPI.BundleIDsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterIdentifier, filterName, filterPlatform, filterSeedID, filterID, sort, fieldsBundleIDs, limit, include, fieldsBundleIDCapabilities, fieldsProfiles, limitBundleIDCapabilities, limitProfiles), id: "bundleIds-get_collection")
        }

        private func makeGetQuery(_ filterIdentifier: [String]?, _ filterName: [String]?, _ filterPlatform: [FilterPlatform]?, _ filterSeedID: [String]?, _ filterID: [String]?, _ sort: [Sort]?, _ fieldsBundleIDs: [FieldsBundleIDs]?, _ limit: Int?, _ include: [Include]?, _ fieldsBundleIDCapabilities: [FieldsBundleIDCapabilities]?, _ fieldsProfiles: [FieldsProfiles]?, _ limitBundleIDCapabilities: Int?, _ limitProfiles: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterIdentifier, forKey: "filter[identifier]")
            encoder.encode(filterName, forKey: "filter[name]")
            encoder.encode(filterPlatform, forKey: "filter[platform]")
            encoder.encode(filterSeedID, forKey: "filter[seedId]")
            encoder.encode(filterID, forKey: "filter[id]")
            encoder.encode(sort, forKey: "sort")
            encoder.encode(fieldsBundleIDs, forKey: "fields[bundleIds]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsBundleIDCapabilities, forKey: "fields[bundleIdCapabilities]")
            encoder.encode(fieldsProfiles, forKey: "fields[profiles]")
            encoder.encode(limitBundleIDCapabilities, forKey: "limit[bundleIdCapabilities]")
            encoder.encode(limitProfiles, forKey: "limit[profiles]")
            return encoder.items
        }

        public enum FilterPlatform: String, CaseIterable, Codable, Sendable {
            case ios = "IOS"
            case macOs = "MAC_OS"
        }

        public enum Sort: String, CaseIterable, Codable, Sendable {
            case id
            case minusid = "-id"
            case identifier
            case minusidentifier = "-identifier"
            case name
            case minusname = "-name"
            case platform
            case minusplatform = "-platform"
            case seedID = "seedId"
            case minusseedID = "-seedId"
        }

        public enum FieldsBundleIDs: String, CaseIterable, Codable, Sendable {
            case bundleIDCapabilities = "bundleIdCapabilities"
            case identifier
            case name
            case platform
            case profiles
            case seedID = "seedId"
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case bundleIDCapabilities = "bundleIdCapabilities"
            case profiles
        }

        public enum FieldsBundleIDCapabilities: String, CaseIterable, Codable, Sendable {
            case bundleID = "bundleId"
            case capabilityType
            case settings
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

        /// Register a New Bundle ID
        public func post(_ body: EnterpriseAPI.BundleIDCreateRequest) -> Request<EnterpriseAPI.BundleIDResponse> {
            Request(path: path, method: "POST", body: body, id: "bundleIds-create_instance")
        }
    }
}
