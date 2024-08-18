// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1 {
    public var alternativeDistributionKeys: AlternativeDistributionKeys {
        AlternativeDistributionKeys(path: path + "/alternativeDistributionKeys")
    }

    public struct AlternativeDistributionKeys {
        /// Path: `/v1/alternativeDistributionKeys`
        public let path: String

        public func get(isExistsApp: Bool? = nil, fieldsAlternativeDistributionKeys: [FieldsAlternativeDistributionKeys]? = nil, limit: Int? = nil) -> Request<AppStoreAPI.AlternativeDistributionKeysResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(isExistsApp, fieldsAlternativeDistributionKeys, limit), id: "alternativeDistributionKeys-get_collection")
        }

        private func makeGetQuery(_ isExistsApp: Bool?, _ fieldsAlternativeDistributionKeys: [FieldsAlternativeDistributionKeys]?, _ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(isExistsApp, forKey: "exists[app]")
            encoder.encode(fieldsAlternativeDistributionKeys, forKey: "fields[alternativeDistributionKeys]")
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }

        public enum FieldsAlternativeDistributionKeys: String, CaseIterable, Codable, Sendable {
            case app
            case publicKey
        }

        public func post(_ body: AppStoreAPI.AlternativeDistributionKeyCreateRequest) -> Request<AppStoreAPI.AlternativeDistributionKeyResponse> {
            Request(path: path, method: "POST", body: body, id: "alternativeDistributionKeys-create_instance")
        }
    }
}
