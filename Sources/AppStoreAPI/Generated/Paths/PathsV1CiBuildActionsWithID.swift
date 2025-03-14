// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.CiBuildActions {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/ciBuildActions/{id}`
        public let path: String

        public func get(fieldsCiBuildActions: [FieldsCiBuildActions]? = nil, fieldsCiBuildRuns: [FieldsCiBuildRuns]? = nil, include: [Include]? = nil) -> Request<AppStoreAPI.CiBuildActionResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsCiBuildActions, fieldsCiBuildRuns, include), id: "ciBuildActions_getInstance")
        }

        private func makeGetQuery(_ fieldsCiBuildActions: [FieldsCiBuildActions]?, _ fieldsCiBuildRuns: [FieldsCiBuildRuns]?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsCiBuildActions, forKey: "fields[ciBuildActions]")
            encoder.encode(fieldsCiBuildRuns, forKey: "fields[ciBuildRuns]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsCiBuildActions: String, CaseIterable, Codable, Sendable {
            case name
            case actionType
            case startedDate
            case finishedDate
            case issueCounts
            case executionProgress
            case completionStatus
            case isRequiredToPass
            case buildRun
            case artifacts
            case issues
            case testResults
        }

        public enum FieldsCiBuildRuns: String, CaseIterable, Codable, Sendable {
            case number
            case createdDate
            case startedDate
            case finishedDate
            case sourceCommit
            case destinationCommit
            case isPullRequestBuild
            case issueCounts
            case executionProgress
            case completionStatus
            case startReason
            case cancelReason
            case builds
            case workflow
            case product
            case sourceBranchOrTag
            case destinationBranch
            case actions
            case pullRequest
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case buildRun
        }
    }
}
