// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct GameCenterLeaderboardSetMemberLocalizationCreateRequest: Codable, Equatable {
    public var data: Data

    public struct Data: Codable, Equatable {
        public var type: `Type`
        public var attributes: Attributes?
        public var relationships: Relationships

        public enum `Type`: String, Codable, CaseIterable {
            case gameCenterLeaderboardSetMemberLocalizations
        }

        public struct Attributes: Codable, Equatable {
            public var name: String?
            public var locale: String?

            public init(name: String? = nil, locale: String? = nil) {
                self.name = name
                self.locale = locale
            }
        }

        public struct Relationships: Codable, Equatable {
            public var gameCenterLeaderboardSet: GameCenterLeaderboardSet
            public var gameCenterLeaderboard: GameCenterLeaderboard

            public struct GameCenterLeaderboardSet: Codable, Equatable {
                public var data: Data

                public struct Data: Codable, Equatable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case gameCenterLeaderboardSets
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

            public struct GameCenterLeaderboard: Codable, Equatable {
                public var data: Data

                public struct Data: Codable, Equatable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case gameCenterLeaderboards
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

            public init(gameCenterLeaderboardSet: GameCenterLeaderboardSet, gameCenterLeaderboard: GameCenterLeaderboard) {
                self.gameCenterLeaderboardSet = gameCenterLeaderboardSet
                self.gameCenterLeaderboard = gameCenterLeaderboard
            }
        }

        public init(type: `Type`, attributes: Attributes? = nil, relationships: Relationships) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
