// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.Apps.WithID {
    public var alternativeDistributionKey: AlternativeDistributionKey {
        AlternativeDistributionKey(path: path + "/alternativeDistributionKey")
    }

    public struct AlternativeDistributionKey {
        /// Path: `/v1/apps/{id}/alternativeDistributionKey`
        public let path: String

        public func get(fieldsAlternativeDistributionKeys: [FieldsAlternativeDistributionKeys]? = nil) -> Request<_Specification.AlternativeDistributionKeyResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsAlternativeDistributionKeys), id: "apps-alternativeDistributionKey-get_to_one_related")
        }

        private func makeGetQuery(_ fieldsAlternativeDistributionKeys: [FieldsAlternativeDistributionKeys]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsAlternativeDistributionKeys, forKey: "fields[alternativeDistributionKeys]", explode: false)
            return encoder.items
        }

        public enum FieldsAlternativeDistributionKeys: String, CaseIterable, Codable, Sendable {
            case app
            case publicKey
        }
    }
}
