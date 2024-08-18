// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct GameCenterMatchmakingQueueCreateRequest: Codable, Equatable, Sendable {
    public var data: Data

    public struct Data: Codable, Equatable, Sendable {
        public var type: `Type`
        public var attributes: Attributes
        public var relationships: Relationships

        public enum `Type`: String, CaseIterable, Codable, Sendable {
            case gameCenterMatchmakingQueues
        }

        public struct Attributes: Codable, Equatable, Sendable {
            public var referenceName: String
            public var classicMatchmakingBundleIDs: [String]?

            public init(referenceName: String, classicMatchmakingBundleIDs: [String]? = nil) {
                self.referenceName = referenceName
                self.classicMatchmakingBundleIDs = classicMatchmakingBundleIDs
            }

            private enum CodingKeys: String, CodingKey {
                case referenceName
                case classicMatchmakingBundleIDs = "classicMatchmakingBundleIds"
            }
        }

        public struct Relationships: Codable, Equatable, Sendable {
            public var ruleSet: RuleSet
            public var experimentRuleSet: ExperimentRuleSet?

            public struct RuleSet: Codable, Equatable, Sendable {
                public var data: Data

                public struct Data: Codable, Equatable, Identifiable, Sendable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, CaseIterable, Codable, Sendable {
                        case gameCenterMatchmakingRuleSets
                    }

                    public init(type: `Type` = .gameCenterMatchmakingRuleSets, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data) {
                    self.data = data
                }
            }

            public struct ExperimentRuleSet: Codable, Equatable, Sendable {
                public var data: Data?

                public struct Data: Codable, Equatable, Identifiable, Sendable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, CaseIterable, Codable, Sendable {
                        case gameCenterMatchmakingRuleSets
                    }

                    public init(type: `Type` = .gameCenterMatchmakingRuleSets, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data? = nil) {
                    self.data = data
                }
            }

            public init(ruleSet: RuleSet, experimentRuleSet: ExperimentRuleSet? = nil) {
                self.ruleSet = ruleSet
                self.experimentRuleSet = experimentRuleSet
            }
        }

        public init(type: `Type` = .gameCenterMatchmakingQueues, attributes: Attributes, relationships: Relationships) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
