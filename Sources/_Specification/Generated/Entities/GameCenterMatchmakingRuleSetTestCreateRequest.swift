// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct GameCenterMatchmakingRuleSetTestCreateRequest: Codable, Hashable {
    public var data: Data
    public var included: [IncludedItem]?

    public struct Data: Codable, Hashable {
        public var type: `Type`
        public var relationships: Relationships

        public enum `Type`: String, Codable, CaseIterable {
            case gameCenterMatchmakingRuleSetTests
        }

        public struct Relationships: Codable, Hashable {
            public var matchmakingRuleSet: MatchmakingRuleSet
            public var matchmakingRequests: MatchmakingRequests

            public struct MatchmakingRuleSet: Codable, Hashable {
                public var data: Data

                public struct Data: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case gameCenterMatchmakingRuleSets
                    }

                    public init(type: `Type`, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data) {
                    self.data = data
                }
            }

            public struct MatchmakingRequests: Codable, Hashable {
                public var data: [Datum]

                public struct Datum: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case gameCenterMatchmakingTestRequests
                    }

                    public init(type: `Type`, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: [Datum]) {
                    self.data = data
                }
            }

            public init(matchmakingRuleSet: MatchmakingRuleSet, matchmakingRequests: MatchmakingRequests) {
                self.matchmakingRuleSet = matchmakingRuleSet
                self.matchmakingRequests = matchmakingRequests
            }
        }

        public init(type: `Type`, relationships: Relationships) {
            self.type = type
            self.relationships = relationships
        }
    }

    public enum IncludedItem: Codable, Hashable {
        case gameCenterMatchmakingTestPlayerPropertyInlineCreate(GameCenterMatchmakingTestPlayerPropertyInlineCreate)
        case gameCenterMatchmakingTestRequestInlineCreate(GameCenterMatchmakingTestRequestInlineCreate)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(GameCenterMatchmakingTestPlayerPropertyInlineCreate.self) {
                self = .gameCenterMatchmakingTestPlayerPropertyInlineCreate(value)
            } else if let value = try? container.decode(GameCenterMatchmakingTestRequestInlineCreate.self) {
                self = .gameCenterMatchmakingTestRequestInlineCreate(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (GameCenterMatchmakingTestPlayerPropertyInlineCreate, GameCenterMatchmakingTestRequestInlineCreate)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .gameCenterMatchmakingTestPlayerPropertyInlineCreate(let value): try container.encode(value)
            case .gameCenterMatchmakingTestRequestInlineCreate(let value): try container.encode(value)
            }
        }
    }

    public init(data: Data, included: [IncludedItem]? = nil) {
        self.data = data
        self.included = included
    }
}
