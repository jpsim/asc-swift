// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct GameCenterMatchmakingQueue: Codable, Equatable, Identifiable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks?

    public enum `Type`: String, Codable, CaseIterable {
        case gameCenterMatchmakingQueues
    }

    public struct Attributes: Codable, Equatable {
        public var referenceName: String?
        public var classicMatchmakingBundleIDs: [String]?

        public init(referenceName: String? = nil, classicMatchmakingBundleIDs: [String]? = nil) {
            self.referenceName = referenceName
            self.classicMatchmakingBundleIDs = classicMatchmakingBundleIDs
        }

        private enum CodingKeys: String, CodingKey {
            case referenceName
            case classicMatchmakingBundleIDs = "classicMatchmakingBundleIds"
        }
    }

    public struct Relationships: Codable, Equatable {
        public var ruleSet: RuleSet?
        public var experimentRuleSet: ExperimentRuleSet?

        public struct RuleSet: Codable, Equatable {
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
                    case gameCenterMatchmakingRuleSets
                }

                public init(type: `Type` = .gameCenterMatchmakingRuleSets, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public struct ExperimentRuleSet: Codable, Equatable {
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
                    case gameCenterMatchmakingRuleSets
                }

                public init(type: `Type` = .gameCenterMatchmakingRuleSets, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public init(ruleSet: RuleSet? = nil, experimentRuleSet: ExperimentRuleSet? = nil) {
            self.ruleSet = ruleSet
            self.experimentRuleSet = experimentRuleSet
        }
    }

    public init(type: `Type` = .gameCenterMatchmakingQueues, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
