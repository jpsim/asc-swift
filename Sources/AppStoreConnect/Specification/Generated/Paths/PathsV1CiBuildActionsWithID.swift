// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.CiBuildActions {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/ciBuildActions/{id}`
        public let path: String

        public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect.CiBuildActionResponse> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "ciBuildActions-get_instance")
        }

        public struct GetParameters {
            public var fieldsCiBuildActions: [FieldsCiBuildActions]?
            public var include: [Include]?
            public var fieldsCiIssues: [FieldsCiIssues]?
            public var fieldsCiBuildRuns: [FieldsCiBuildRuns]?
            public var fieldsCiTestResults: [FieldsCiTestResults]?
            public var fieldsCiArtifacts: [FieldsCiArtifacts]?

            public enum FieldsCiBuildActions: String, Codable, CaseIterable {
                case actionType
                case artifacts
                case buildRun
                case completionStatus
                case executionProgress
                case finishedDate
                case isRequiredToPass
                case issueCounts
                case issues
                case name
                case startedDate
                case testResults
            }

            public enum Include: String, Codable, CaseIterable {
                case buildRun
            }

            public enum FieldsCiIssues: String, Codable, CaseIterable {
                case category
                case fileSource
                case issueType
                case message
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

            public enum FieldsCiTestResults: String, Codable, CaseIterable {
                case className
                case destinationTestResults
                case fileSource
                case message
                case name
                case status
            }

            public enum FieldsCiArtifacts: String, Codable, CaseIterable {
                case downloadURL = "downloadUrl"
                case fileName
                case fileSize
                case fileType
            }

            public init(fieldsCiBuildActions: [FieldsCiBuildActions]? = nil, include: [Include]? = nil, fieldsCiIssues: [FieldsCiIssues]? = nil, fieldsCiBuildRuns: [FieldsCiBuildRuns]? = nil, fieldsCiTestResults: [FieldsCiTestResults]? = nil, fieldsCiArtifacts: [FieldsCiArtifacts]? = nil) {
                self.fieldsCiBuildActions = fieldsCiBuildActions
                self.include = include
                self.fieldsCiIssues = fieldsCiIssues
                self.fieldsCiBuildRuns = fieldsCiBuildRuns
                self.fieldsCiTestResults = fieldsCiTestResults
                self.fieldsCiArtifacts = fieldsCiArtifacts
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder(explode: false)
                encoder.encode(fieldsCiBuildActions, forKey: "fields[ciBuildActions]")
                encoder.encode(include, forKey: "include")
                encoder.encode(fieldsCiIssues, forKey: "fields[ciIssues]")
                encoder.encode(fieldsCiBuildRuns, forKey: "fields[ciBuildRuns]")
                encoder.encode(fieldsCiTestResults, forKey: "fields[ciTestResults]")
                encoder.encode(fieldsCiArtifacts, forKey: "fields[ciArtifacts]")
                return encoder.items
            }
        }
    }
}
