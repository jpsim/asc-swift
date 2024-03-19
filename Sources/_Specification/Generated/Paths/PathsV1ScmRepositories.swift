// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var scmRepositories: ScmRepositories {
        ScmRepositories(path: path + "/scmRepositories")
    }

    public struct ScmRepositories {
        /// Path: `/v1/scmRepositories`
        public let path: String

        public func get(filterID: [String]? = nil, fieldsScmRepositories: [FieldsScmRepositories]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsScmGitReferences: [FieldsScmGitReferences]? = nil, fieldsScmPullRequests: [FieldsScmPullRequests]? = nil) -> Request<_Specification.ScmRepositoriesResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterID, fieldsScmRepositories, limit, include, fieldsScmGitReferences, fieldsScmPullRequests), id: "scmRepositories-get_collection")
        }

        private func makeGetQuery(_ filterID: [String]?, _ fieldsScmRepositories: [FieldsScmRepositories]?, _ limit: Int?, _ include: [Include]?, _ fieldsScmGitReferences: [FieldsScmGitReferences]?, _ fieldsScmPullRequests: [FieldsScmPullRequests]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterID, forKey: "filter[id]")
            encoder.encode(fieldsScmRepositories, forKey: "fields[scmRepositories]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsScmGitReferences, forKey: "fields[scmGitReferences]")
            encoder.encode(fieldsScmPullRequests, forKey: "fields[scmPullRequests]")
            return encoder.items
        }

        public enum FieldsScmRepositories: String, CaseIterable, Codable, Sendable {
            case defaultBranch
            case gitReferences
            case httpCloneURL = "httpCloneUrl"
            case lastAccessedDate
            case ownerName
            case pullRequests
            case repositoryName
            case scmProvider
            case sshCloneURL = "sshCloneUrl"
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case defaultBranch
            case scmProvider
        }

        public enum FieldsScmGitReferences: String, CaseIterable, Codable, Sendable {
            case canonicalName
            case isDeleted
            case kind
            case name
            case repository
        }

        public enum FieldsScmPullRequests: String, CaseIterable, Codable, Sendable {
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
    }
}
