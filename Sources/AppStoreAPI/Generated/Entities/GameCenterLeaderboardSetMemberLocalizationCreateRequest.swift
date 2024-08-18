// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct GameCenterLeaderboardSetMemberLocalizationCreateRequest: Codable, Equatable, Sendable {
    public var data: Data

    public struct Data: Codable, Equatable, Sendable {
        public var type: `Type`
        public var attributes: Attributes?
        public var relationships: Relationships

        public enum `Type`: String, CaseIterable, Codable, Sendable {
            case gameCenterLeaderboardSetMemberLocalizations
        }

        public struct Attributes: Codable, Equatable, Sendable {
            public var name: String?
            public var locale: String?

            public init(name: String? = nil, locale: String? = nil) {
                self.name = name
                self.locale = locale
            }
        }

        public struct Relationships: Codable, Equatable, Sendable {
            public var gameCenterLeaderboardSet: GameCenterLeaderboardSet
            public var gameCenterLeaderboard: GameCenterLeaderboard

            public struct GameCenterLeaderboardSet: Codable, Equatable, Sendable {
                public var data: Data

                public struct Data: Codable, Equatable, Identifiable, Sendable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, CaseIterable, Codable, Sendable {
                        case gameCenterLeaderboardSets
                    }

                    public init(type: `Type` = .gameCenterLeaderboardSets, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data) {
                    self.data = data
                }
            }

            public struct GameCenterLeaderboard: Codable, Equatable, Sendable {
                public var data: Data

                public struct Data: Codable, Equatable, Identifiable, Sendable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, CaseIterable, Codable, Sendable {
                        case gameCenterLeaderboards
                    }

                    public init(type: `Type` = .gameCenterLeaderboards, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data) {
                    self.data = data
                }
            }

            public init(gameCenterLeaderboardSet: GameCenterLeaderboardSet, gameCenterLeaderboard: GameCenterLeaderboard) {
                self.gameCenterLeaderboardSet = gameCenterLeaderboardSet
                self.gameCenterLeaderboard = gameCenterLeaderboard
            }
        }

        public init(type: `Type` = .gameCenterLeaderboardSetMemberLocalizations, attributes: Attributes? = nil, relationships: Relationships) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
