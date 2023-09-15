// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct GameCenterLeaderboardSetReleaseCreateRequest: Codable, Hashable {
    public var data: Data

    public struct Data: Codable, Hashable {
        public var type: `Type`
        public var relationships: Relationships

        public enum `Type`: String, Codable, CaseIterable {
            case gameCenterLeaderboardSetReleases
        }

        public struct Relationships: Codable, Hashable {
            public var gameCenterDetail: GameCenterDetail
            public var gameCenterLeaderboardSet: GameCenterLeaderboardSet

            public struct GameCenterDetail: Codable, Hashable {
                public var data: Data

                public struct Data: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case gameCenterDetails
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

            public struct GameCenterLeaderboardSet: Codable, Hashable {
                public var data: Data

                public struct Data: Codable, Hashable, Identifiable {
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

            public init(gameCenterDetail: GameCenterDetail, gameCenterLeaderboardSet: GameCenterLeaderboardSet) {
                self.gameCenterDetail = gameCenterDetail
                self.gameCenterLeaderboardSet = gameCenterLeaderboardSet
            }
        }

        public init(type: `Type`, relationships: Relationships) {
            self.type = type
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
