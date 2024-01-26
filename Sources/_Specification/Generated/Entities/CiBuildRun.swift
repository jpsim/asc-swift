// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct CiBuildRun: Codable, Equatable, Identifiable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks?

    public enum `Type`: String, Codable, CaseIterable {
        case ciBuildRuns
    }

    public struct Attributes: Codable, Equatable {
        public var number: Int?
        public var createdDate: Date?
        public var startedDate: Date?
        public var finishedDate: Date?
        public var sourceCommit: SourceCommit?
        public var destinationCommit: DestinationCommit?
        public var isPullRequestBuild: Bool?
        public var issueCounts: CiIssueCounts?
        public var executionProgress: CiExecutionProgress?
        public var completionStatus: CiCompletionStatus?
        public var startReason: StartReason?
        public var cancelReason: CancelReason?

        public struct SourceCommit: Codable, Equatable {
            public var commitSha: String?
            public var message: String?
            public var author: CiGitUser?
            public var committer: CiGitUser?
            public var webURL: URL?

            public init(commitSha: String? = nil, message: String? = nil, author: CiGitUser? = nil, committer: CiGitUser? = nil, webURL: URL? = nil) {
                self.commitSha = commitSha
                self.message = message
                self.author = author
                self.committer = committer
                self.webURL = webURL
            }

            private enum CodingKeys: String, CodingKey {
                case commitSha
                case message
                case author
                case committer
                case webURL = "webUrl"
            }
        }

        public struct DestinationCommit: Codable, Equatable {
            public var commitSha: String?
            public var message: String?
            public var author: CiGitUser?
            public var committer: CiGitUser?
            public var webURL: URL?

            public init(commitSha: String? = nil, message: String? = nil, author: CiGitUser? = nil, committer: CiGitUser? = nil, webURL: URL? = nil) {
                self.commitSha = commitSha
                self.message = message
                self.author = author
                self.committer = committer
                self.webURL = webURL
            }

            private enum CodingKeys: String, CodingKey {
                case commitSha
                case message
                case author
                case committer
                case webURL = "webUrl"
            }
        }

        public enum StartReason: String, Codable, CaseIterable {
            case gitRefChange = "GIT_REF_CHANGE"
            case manual = "MANUAL"
            case manualRebuild = "MANUAL_REBUILD"
            case pullRequestOpen = "PULL_REQUEST_OPEN"
            case pullRequestUpdate = "PULL_REQUEST_UPDATE"
            case schedule = "SCHEDULE"
        }

        public enum CancelReason: String, Codable, CaseIterable {
            case automaticallyByNewerBuild = "AUTOMATICALLY_BY_NEWER_BUILD"
            case manuallyByUser = "MANUALLY_BY_USER"
        }

        public init(number: Int? = nil, createdDate: Date? = nil, startedDate: Date? = nil, finishedDate: Date? = nil, sourceCommit: SourceCommit? = nil, destinationCommit: DestinationCommit? = nil, isPullRequestBuild: Bool? = nil, issueCounts: CiIssueCounts? = nil, executionProgress: CiExecutionProgress? = nil, completionStatus: CiCompletionStatus? = nil, startReason: StartReason? = nil, cancelReason: CancelReason? = nil) {
            self.number = number
            self.createdDate = createdDate
            self.startedDate = startedDate
            self.finishedDate = finishedDate
            self.sourceCommit = sourceCommit
            self.destinationCommit = destinationCommit
            self.isPullRequestBuild = isPullRequestBuild
            self.issueCounts = issueCounts
            self.executionProgress = executionProgress
            self.completionStatus = completionStatus
            self.startReason = startReason
            self.cancelReason = cancelReason
        }
    }

    public struct Relationships: Codable, Equatable {
        public var builds: Builds?
        public var workflow: Workflow?
        public var product: Product?
        public var sourceBranchOrTag: SourceBranchOrTag?
        public var destinationBranch: DestinationBranch?
        public var pullRequest: PullRequest?

        public struct Builds: Codable, Equatable {
            public var links: Links?
            public var meta: PagingInformation?
            public var data: [Datum]?

            public struct Links: Codable, Equatable {
                public var this: URL?
                public var related: URL?

                public init(this: URL? = nil, related: URL? = nil) {
                    self.this = this
                    self.related = related
                }

                private enum CodingKeys: String, CodingKey {
                    case this = "self"
                    case related
                }
            }

            public struct Datum: Codable, Equatable, Identifiable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, Codable, CaseIterable {
                    case builds
                }

                public init(type: `Type`, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
                self.links = links
                self.meta = meta
                self.data = data
            }
        }

        public struct Workflow: Codable, Equatable {
            public var links: Links?
            public var data: Data?

            public struct Links: Codable, Equatable {
                public var this: URL?
                public var related: URL?

                public init(this: URL? = nil, related: URL? = nil) {
                    self.this = this
                    self.related = related
                }

                private enum CodingKeys: String, CodingKey {
                    case this = "self"
                    case related
                }
            }

            public struct Data: Codable, Equatable, Identifiable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, Codable, CaseIterable {
                    case ciWorkflows
                }

                public init(type: `Type`, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public struct Product: Codable, Equatable {
            public var links: Links?
            public var data: Data?

            public struct Links: Codable, Equatable {
                public var this: URL?
                public var related: URL?

                public init(this: URL? = nil, related: URL? = nil) {
                    self.this = this
                    self.related = related
                }

                private enum CodingKeys: String, CodingKey {
                    case this = "self"
                    case related
                }
            }

            public struct Data: Codable, Equatable, Identifiable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, Codable, CaseIterable {
                    case ciProducts
                }

                public init(type: `Type`, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public struct SourceBranchOrTag: Codable, Equatable {
            public var links: Links?
            public var data: Data?

            public struct Links: Codable, Equatable {
                public var this: URL?
                public var related: URL?

                public init(this: URL? = nil, related: URL? = nil) {
                    self.this = this
                    self.related = related
                }

                private enum CodingKeys: String, CodingKey {
                    case this = "self"
                    case related
                }
            }

            public struct Data: Codable, Equatable, Identifiable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, Codable, CaseIterable {
                    case scmGitReferences
                }

                public init(type: `Type`, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public struct DestinationBranch: Codable, Equatable {
            public var links: Links?
            public var data: Data?

            public struct Links: Codable, Equatable {
                public var this: URL?
                public var related: URL?

                public init(this: URL? = nil, related: URL? = nil) {
                    self.this = this
                    self.related = related
                }

                private enum CodingKeys: String, CodingKey {
                    case this = "self"
                    case related
                }
            }

            public struct Data: Codable, Equatable, Identifiable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, Codable, CaseIterable {
                    case scmGitReferences
                }

                public init(type: `Type`, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public struct PullRequest: Codable, Equatable {
            public var links: Links?
            public var data: Data?

            public struct Links: Codable, Equatable {
                public var this: URL?
                public var related: URL?

                public init(this: URL? = nil, related: URL? = nil) {
                    self.this = this
                    self.related = related
                }

                private enum CodingKeys: String, CodingKey {
                    case this = "self"
                    case related
                }
            }

            public struct Data: Codable, Equatable, Identifiable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, Codable, CaseIterable {
                    case scmPullRequests
                }

                public init(type: `Type`, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public init(builds: Builds? = nil, workflow: Workflow? = nil, product: Product? = nil, sourceBranchOrTag: SourceBranchOrTag? = nil, destinationBranch: DestinationBranch? = nil, pullRequest: PullRequest? = nil) {
            self.builds = builds
            self.workflow = workflow
            self.product = product
            self.sourceBranchOrTag = sourceBranchOrTag
            self.destinationBranch = destinationBranch
            self.pullRequest = pullRequest
        }
    }

    public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
