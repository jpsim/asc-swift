// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.CiBuildActions.WithID {
    public var issues: Issues {
        Issues(path: path + "/issues")
    }

    public struct Issues {
        /// Path: `/v1/ciBuildActions/{id}/issues`
        public let path: String

        public func get(fieldsCiIssues: [FieldsCiIssues]? = nil, limit: Int? = nil) -> Request<_Specification.CiIssuesResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsCiIssues, limit), id: "ciBuildActions-issues-get_to_many_related")
        }

        private func makeGetQuery(_ fieldsCiIssues: [FieldsCiIssues]?, _ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsCiIssues, forKey: "fields[ciIssues]", explode: false)
            encoder.encode(limit, forKey: "limit")
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
