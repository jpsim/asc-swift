// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct GameCenterMatchmakingRuleCreateRequest: Codable, Equatable, Sendable {
    public var data: Data

    public struct Data: Codable, Equatable, Sendable {
        public var type: `Type`
        public var attributes: Attributes
        public var relationships: Relationships

        public enum `Type`: String, CaseIterable, Codable, Sendable {
            case gameCenterMatchmakingRules
        }

        public struct Attributes: Codable, Equatable, Sendable {
            public var referenceName: String
            public var description: String
            public var type: `Type`
            public var expression: String
            public var weight: Double?

            public enum `Type`: String, CaseIterable, Codable, Sendable {
                case compatible = "COMPATIBLE"
                case distance = "DISTANCE"
                case match = "MATCH"
                case team = "TEAM"
            }

            public init(referenceName: String, description: String, type: `Type`, expression: String, weight: Double? = nil) {
                self.referenceName = referenceName
                self.description = description
                self.type = type
                self.expression = expression
                self.weight = weight
            }
        }

        public struct Relationships: Codable, Equatable, Sendable {
            public var ruleSet: RuleSet

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

            public init(ruleSet: RuleSet) {
                self.ruleSet = ruleSet
            }
        }

        public init(type: `Type` = .gameCenterMatchmakingRules, attributes: Attributes, relationships: Relationships) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
