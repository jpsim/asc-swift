// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.CiWorkflows {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/ciWorkflows/{id}`
        public let path: String

        public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect.CiWorkflowResponse> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "ciWorkflows-get_instance")
        }

        public struct GetParameters {
            public var fieldsCiWorkflows: [FieldsCiWorkflows]?
            public var include: [Include]?
            public var fieldsCiBuildRuns: [FieldsCiBuildRuns]?
            public var fieldsScmRepositories: [FieldsScmRepositories]?

            public enum FieldsCiWorkflows: String, Codable, CaseIterable {
                case actions
                case branchStartCondition
                case buildRuns
                case clean
                case containerFilePath
                case description
                case isEnabled
                case isLockedForEditing
                case lastModifiedDate
                case macOsVersion
                case name
                case product
                case pullRequestStartCondition
                case repository
                case scheduledStartCondition
                case tagStartCondition
                case xcodeVersion
            }

            public enum Include: String, Codable, CaseIterable {
                case macOsVersion
                case product
                case repository
                case xcodeVersion
            }

            public enum FieldsCiBuildRuns: String, Codable, CaseIterable {
                case actions
                case buildRun
                case builds
                case cancelReason
                case clean
                case completionStatus
                case createdDate
                case destinationBranch
                case destinationCommit
                case executionProgress
                case finishedDate
                case isPullRequestBuild
                case issueCounts
                case number
                case product
                case pullRequest
                case sourceBranchOrTag
                case sourceCommit
                case startReason
                case startedDate
                case workflow
            }

            public enum FieldsScmRepositories: String, Codable, CaseIterable {
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

            public init(fieldsCiWorkflows: [FieldsCiWorkflows]? = nil, include: [Include]? = nil, fieldsCiBuildRuns: [FieldsCiBuildRuns]? = nil, fieldsScmRepositories: [FieldsScmRepositories]? = nil) {
                self.fieldsCiWorkflows = fieldsCiWorkflows
                self.include = include
                self.fieldsCiBuildRuns = fieldsCiBuildRuns
                self.fieldsScmRepositories = fieldsScmRepositories
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder(explode: false)
                encoder.encode(fieldsCiWorkflows, forKey: "fields[ciWorkflows]")
                encoder.encode(include, forKey: "include")
                encoder.encode(fieldsCiBuildRuns, forKey: "fields[ciBuildRuns]")
                encoder.encode(fieldsScmRepositories, forKey: "fields[scmRepositories]")
                return encoder.items
            }
        }

        public func patch(_ body: AppStoreConnect.CiWorkflowUpdateRequest) -> Request<AppStoreConnect.CiWorkflowResponse> {
            Request(method: "PATCH", url: path, body: body, id: "ciWorkflows-update_instance")
        }

        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "ciWorkflows-delete_instance")
        }
    }
}
