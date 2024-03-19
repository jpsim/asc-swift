// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct CiWorkflow: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks?

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case ciWorkflows
    }

    public struct Attributes: Codable, Equatable, Sendable {
        public var name: String?
        public var description: String?
        public var branchStartCondition: CiBranchStartCondition?
        public var tagStartCondition: CiTagStartCondition?
        public var pullRequestStartCondition: CiPullRequestStartCondition?
        public var scheduledStartCondition: CiScheduledStartCondition?
        public var manualBranchStartCondition: CiManualBranchStartCondition?
        public var manualTagStartCondition: CiManualTagStartCondition?
        public var manualPullRequestStartCondition: CiManualPullRequestStartCondition?
        public var actions: [CiAction]?
        public var isEnabled: Bool?
        public var isLockedForEditing: Bool?
        public var isClean: Bool?
        public var containerFilePath: String?
        public var lastModifiedDate: Date?

        public init(name: String? = nil, description: String? = nil, branchStartCondition: CiBranchStartCondition? = nil, tagStartCondition: CiTagStartCondition? = nil, pullRequestStartCondition: CiPullRequestStartCondition? = nil, scheduledStartCondition: CiScheduledStartCondition? = nil, manualBranchStartCondition: CiManualBranchStartCondition? = nil, manualTagStartCondition: CiManualTagStartCondition? = nil, manualPullRequestStartCondition: CiManualPullRequestStartCondition? = nil, actions: [CiAction]? = nil, isEnabled: Bool? = nil, isLockedForEditing: Bool? = nil, isClean: Bool? = nil, containerFilePath: String? = nil, lastModifiedDate: Date? = nil) {
            self.name = name
            self.description = description
            self.branchStartCondition = branchStartCondition
            self.tagStartCondition = tagStartCondition
            self.pullRequestStartCondition = pullRequestStartCondition
            self.scheduledStartCondition = scheduledStartCondition
            self.manualBranchStartCondition = manualBranchStartCondition
            self.manualTagStartCondition = manualTagStartCondition
            self.manualPullRequestStartCondition = manualPullRequestStartCondition
            self.actions = actions
            self.isEnabled = isEnabled
            self.isLockedForEditing = isLockedForEditing
            self.isClean = isClean
            self.containerFilePath = containerFilePath
            self.lastModifiedDate = lastModifiedDate
        }

        private enum CodingKeys: String, CodingKey {
            case name
            case description
            case branchStartCondition
            case tagStartCondition
            case pullRequestStartCondition
            case scheduledStartCondition
            case manualBranchStartCondition
            case manualTagStartCondition
            case manualPullRequestStartCondition
            case actions
            case isEnabled
            case isLockedForEditing
            case isClean = "clean"
            case containerFilePath
            case lastModifiedDate
        }
    }

    public struct Relationships: Codable, Equatable, Sendable {
        public var product: Product?
        public var repository: Repository?
        public var xcodeVersion: XcodeVersion?
        public var macOsVersion: MacOsVersion?

        public struct Product: Codable, Equatable, Sendable {
            public var links: Links?
            public var data: Data?

            public struct Links: Codable, Equatable, Sendable {
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

            public struct Data: Codable, Equatable, Identifiable, Sendable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, CaseIterable, Codable, Sendable {
                    case ciProducts
                }

                public init(type: `Type` = .ciProducts, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public struct Repository: Codable, Equatable, Sendable {
            public var links: Links?
            public var data: Data?

            public struct Links: Codable, Equatable, Sendable {
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

            public struct Data: Codable, Equatable, Identifiable, Sendable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, CaseIterable, Codable, Sendable {
                    case scmRepositories
                }

                public init(type: `Type` = .scmRepositories, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public struct XcodeVersion: Codable, Equatable, Sendable {
            public var links: Links?
            public var data: Data?

            public struct Links: Codable, Equatable, Sendable {
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

            public struct Data: Codable, Equatable, Identifiable, Sendable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, CaseIterable, Codable, Sendable {
                    case ciXcodeVersions
                }

                public init(type: `Type` = .ciXcodeVersions, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public struct MacOsVersion: Codable, Equatable, Sendable {
            public var links: Links?
            public var data: Data?

            public struct Links: Codable, Equatable, Sendable {
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

            public struct Data: Codable, Equatable, Identifiable, Sendable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, CaseIterable, Codable, Sendable {
                    case ciMacOsVersions
                }

                public init(type: `Type` = .ciMacOsVersions, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public init(product: Product? = nil, repository: Repository? = nil, xcodeVersion: XcodeVersion? = nil, macOsVersion: MacOsVersion? = nil) {
            self.product = product
            self.repository = repository
            self.xcodeVersion = xcodeVersion
            self.macOsVersion = macOsVersion
        }
    }

    public init(type: `Type` = .ciWorkflows, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
