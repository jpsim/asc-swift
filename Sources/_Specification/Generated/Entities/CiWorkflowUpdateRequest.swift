// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct CiWorkflowUpdateRequest: Codable, Equatable {
    public var data: Data

    public struct Data: Codable, Equatable, Identifiable {
        public var type: `Type`
        public var id: String
        public var attributes: Attributes?
        public var relationships: Relationships?

        public enum `Type`: String, Codable, CaseIterable {
            case ciWorkflows
        }

        public struct Attributes: Codable, Equatable {
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

            public init(name: String? = nil, description: String? = nil, branchStartCondition: CiBranchStartCondition? = nil, tagStartCondition: CiTagStartCondition? = nil, pullRequestStartCondition: CiPullRequestStartCondition? = nil, scheduledStartCondition: CiScheduledStartCondition? = nil, manualBranchStartCondition: CiManualBranchStartCondition? = nil, manualTagStartCondition: CiManualTagStartCondition? = nil, manualPullRequestStartCondition: CiManualPullRequestStartCondition? = nil, actions: [CiAction]? = nil, isEnabled: Bool? = nil, isLockedForEditing: Bool? = nil, isClean: Bool? = nil, containerFilePath: String? = nil) {
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

        public struct Relationships: Codable, Equatable {
            public var xcodeVersion: XcodeVersion?
            public var macOsVersion: MacOsVersion?

            public struct XcodeVersion: Codable, Equatable {
                public var data: Data?

                public struct Data: Codable, Equatable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case ciXcodeVersions
                    }

                    public init(type: `Type`, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data? = nil) {
                    self.data = data
                }
            }

            public struct MacOsVersion: Codable, Equatable {
                public var data: Data?

                public struct Data: Codable, Equatable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case ciMacOsVersions
                    }

                    public init(type: `Type`, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data? = nil) {
                    self.data = data
                }
            }

            public init(xcodeVersion: XcodeVersion? = nil, macOsVersion: MacOsVersion? = nil) {
                self.xcodeVersion = xcodeVersion
                self.macOsVersion = macOsVersion
            }
        }

        public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil) {
            self.type = type
            self.id = id
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
