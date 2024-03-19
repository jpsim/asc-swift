// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct GameCenterAchievementReleaseCreateRequest: Codable, Equatable {
    public var data: Data

    public struct Data: Codable, Equatable {
        public var type: `Type`
        public var relationships: Relationships

        public enum `Type`: String, Codable, CaseIterable {
            case gameCenterAchievementReleases
        }

        public struct Relationships: Codable, Equatable {
            public var gameCenterDetail: GameCenterDetail
            public var gameCenterAchievement: GameCenterAchievement

            public struct GameCenterDetail: Codable, Equatable {
                public var data: Data

                public struct Data: Codable, Equatable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case gameCenterDetails
                    }

                    public init(type: `Type` = .gameCenterDetails, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data) {
                    self.data = data
                }
            }

            public struct GameCenterAchievement: Codable, Equatable {
                public var data: Data

                public struct Data: Codable, Equatable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case gameCenterAchievements
                    }

                    public init(type: `Type` = .gameCenterAchievements, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data) {
                    self.data = data
                }
            }

            public init(gameCenterDetail: GameCenterDetail, gameCenterAchievement: GameCenterAchievement) {
                self.gameCenterDetail = gameCenterDetail
                self.gameCenterAchievement = gameCenterAchievement
            }
        }

        public init(type: `Type` = .gameCenterAchievementReleases, relationships: Relationships) {
            self.type = type
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
