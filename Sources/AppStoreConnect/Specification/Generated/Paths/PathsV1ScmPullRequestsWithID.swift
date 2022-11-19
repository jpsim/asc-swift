// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.ScmPullRequests {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/scmPullRequests/{id}`
        public let path: String

        public func get(fieldsScmPullRequests: [FieldsScmPullRequests]? = nil, include: [Include]? = nil) -> Request<AppStoreConnect.ScmPullRequestResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(fieldsScmPullRequests, include), id: "scmPullRequests-get_instance")
        }

        private func makeGetQuery(_ fieldsScmPullRequests: [FieldsScmPullRequests]?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsScmPullRequests, forKey: "fields[scmPullRequests]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsScmPullRequests: String, Codable, CaseIterable {
            case destinationBranchName
            case destinationRepositoryName
            case destinationRepositoryOwner
            case isClosed
            case isCrossRepository
            case number
            case repository
            case sourceBranchName
            case sourceRepositoryName
            case sourceRepositoryOwner
            case title
            case webURL = "webUrl"
        }

        public enum Include: String, Codable, CaseIterable {
            case repository
        }
    }
}
