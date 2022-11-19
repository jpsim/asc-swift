// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.ScmGitReferences {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/scmGitReferences/{id}`
        public let path: String

        public func get(fieldsScmGitReferences: [FieldsScmGitReferences]? = nil, include: [Include]? = nil) -> Request<AppStoreConnect.ScmGitReferenceResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(fieldsScmGitReferences, include), id: "scmGitReferences-get_instance")
        }

        private func makeGetQuery(_ fieldsScmGitReferences: [FieldsScmGitReferences]?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsScmGitReferences, forKey: "fields[scmGitReferences]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsScmGitReferences: String, Codable, CaseIterable {
            case canonicalName
            case isDeleted
            case kind
            case name
            case repository
        }

        public enum Include: String, Codable, CaseIterable {
            case repository
        }
    }
}
