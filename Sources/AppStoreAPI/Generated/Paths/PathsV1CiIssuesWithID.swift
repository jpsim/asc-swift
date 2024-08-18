// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.CiIssues {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/ciIssues/{id}`
        public let path: String

        public func get(fieldsCiIssues: [FieldsCiIssues]? = nil) -> Request<AppStoreAPI.CiIssueResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsCiIssues), id: "ciIssues-get_instance")
        }

        private func makeGetQuery(_ fieldsCiIssues: [FieldsCiIssues]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsCiIssues, forKey: "fields[ciIssues]", explode: false)
            return encoder.items
        }

        public enum FieldsCiIssues: String, CaseIterable, Codable, Sendable {
            case category
            case fileSource
            case issueType
            case message
        }
    }
}
