// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct CiWorkflowCreateRequest: Codable, Equatable, Sendable {
    public var data: Data

    public struct Data: Codable, Equatable, Sendable {
        public var type: `Type`
        public var attributes: Attributes
        public var relationships: Relationships

        public enum `Type`: String, CaseIterable, Codable, Sendable {
            case ciWorkflows
        }

        public struct Attributes: Codable, Equatable, Sendable {
            public var name: String
            public var description: String
            public var branchStartCondition: CiBranchStartCondition?
            public var tagStartCondition: CiTagStartCondition?
            public var pullRequestStartCondition: CiPullRequestStartCondition?
            public var scheduledStartCondition: CiScheduledStartCondition?
            public var manualBranchStartCondition: CiManualBranchStartCondition?
            public var manualTagStartCondition: CiManualTagStartCondition?
            public var manualPullRequestStartCondition: CiManualPullRequestStartCondition?
            public var actions: [CiAction]
            public var isEnabled: Bool
            public var isLockedForEditing: Bool?
            public var isClean: Bool
            public var containerFilePath: String

            public init(name: String, description: String, branchStartCondition: CiBranchStartCondition? = nil, tagStartCondition: CiTagStartCondition? = nil, pullRequestStartCondition: CiPullRequestStartCondition? = nil, scheduledStartCondition: CiScheduledStartCondition? = nil, manualBranchStartCondition: CiManualBranchStartCondition? = nil, manualTagStartCondition: CiManualTagStartCondition? = nil, manualPullRequestStartCondition: CiManualPullRequestStartCondition? = nil, actions: [CiAction], isEnabled: Bool, isLockedForEditing: Bool? = nil, isClean: Bool, containerFilePath: String) {
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
            }
        }

        public struct Relationships: Codable, Equatable, Sendable {
            public var product: Product
            public var repository: Repository
            public var xcodeVersion: XcodeVersion
            public var macOsVersion: MacOsVersion

            public struct Product: Codable, Equatable, Sendable {
                public var data: Data

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

                public init(data: Data) {
                    self.data = data
                }
            }

            public struct Repository: Codable, Equatable, Sendable {
                public var data: Data

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

                public init(data: Data) {
                    self.data = data
                }
            }

            public struct XcodeVersion: Codable, Equatable, Sendable {
                public var data: Data

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

                public init(data: Data) {
                    self.data = data
                }
            }

            public struct MacOsVersion: Codable, Equatable, Sendable {
                public var data: Data

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

                public init(data: Data) {
                    self.data = data
                }
            }

            public init(product: Product, repository: Repository, xcodeVersion: XcodeVersion, macOsVersion: MacOsVersion) {
                self.product = product
                self.repository = repository
                self.xcodeVersion = xcodeVersion
                self.macOsVersion = macOsVersion
            }
        }

        public init(type: `Type` = .ciWorkflows, attributes: Attributes, relationships: Relationships) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
