// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.CiWorkflows.WithID {
    public var buildRuns: BuildRuns {
        BuildRuns(path: path + "/buildRuns")
    }

    public struct BuildRuns {
        /// Path: `/v1/ciWorkflows/{id}/buildRuns`
        public let path: String

        public func get(filterBuilds: [String]? = nil, sort: [Sort]? = nil, fieldsScmGitReferences: [FieldsScmGitReferences]? = nil, fieldsCiBuildRuns: [FieldsCiBuildRuns]? = nil, fieldsCiWorkflows: [FieldsCiWorkflows]? = nil, fieldsScmPullRequests: [FieldsScmPullRequests]? = nil, fieldsCiProducts: [FieldsCiProducts]? = nil, fieldsBuilds: [FieldsBuilds]? = nil, limit: Int? = nil, limitBuilds: Int? = nil, include: [Include]? = nil) -> Request<_Specification.CiBuildRunsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterBuilds, sort, fieldsScmGitReferences, fieldsCiBuildRuns, fieldsCiWorkflows, fieldsScmPullRequests, fieldsCiProducts, fieldsBuilds, limit, limitBuilds, include), id: "ciWorkflows-buildRuns-get_to_many_related")
        }

        private func makeGetQuery(_ filterBuilds: [String]?, _ sort: [Sort]?, _ fieldsScmGitReferences: [FieldsScmGitReferences]?, _ fieldsCiBuildRuns: [FieldsCiBuildRuns]?, _ fieldsCiWorkflows: [FieldsCiWorkflows]?, _ fieldsScmPullRequests: [FieldsScmPullRequests]?, _ fieldsCiProducts: [FieldsCiProducts]?, _ fieldsBuilds: [FieldsBuilds]?, _ limit: Int?, _ limitBuilds: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterBuilds, forKey: "filter[builds]")
            encoder.encode(sort, forKey: "sort")
            encoder.encode(fieldsScmGitReferences, forKey: "fields[scmGitReferences]")
            encoder.encode(fieldsCiBuildRuns, forKey: "fields[ciBuildRuns]")
            encoder.encode(fieldsCiWorkflows, forKey: "fields[ciWorkflows]")
            encoder.encode(fieldsScmPullRequests, forKey: "fields[scmPullRequests]")
            encoder.encode(fieldsCiProducts, forKey: "fields[ciProducts]")
            encoder.encode(fieldsBuilds, forKey: "fields[builds]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(limitBuilds, forKey: "limit[builds]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum Sort: String, Codable, CaseIterable {
            case number
            case minusnumber = "-number"
        }

        public enum FieldsScmGitReferences: String, Codable, CaseIterable {
            case canonicalName
            case isDeleted
            case kind
            case name
            case repository
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
            case manualBranchStartCondition
            case manualPullRequestStartCondition
            case manualTagStartCondition
            case name
            case product
            case pullRequestStartCondition
            case repository
            case scheduledStartCondition
            case tagStartCondition
            case xcodeVersion
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

        public enum FieldsCiProducts: String, Codable, CaseIterable {
            case additionalRepositories
            case app
            case buildRuns
            case bundleID = "bundleId"
            case createdDate
            case name
            case primaryRepositories
            case productType
            case workflows
        }

        public enum FieldsBuilds: String, Codable, CaseIterable {
            case app
            case appEncryptionDeclaration
            case appStoreVersion
            case betaAppReviewSubmission
            case betaBuildLocalizations
            case betaGroups
            case buildAudienceType
            case buildBetaDetail
            case buildBundles
            case computedMinMacOsVersion
            case diagnosticSignatures
            case expirationDate
            case expired
            case iconAssetToken
            case icons
            case individualTesters
            case lsMinimumSystemVersion
            case minOsVersion
            case perfPowerMetrics
            case preReleaseVersion
            case processingState
            case uploadedDate
            case usesNonExemptEncryption
            case version
        }

        public enum Include: String, Codable, CaseIterable {
            case builds
            case destinationBranch
            case product
            case pullRequest
            case sourceBranchOrTag
            case workflow
        }
    }
}
