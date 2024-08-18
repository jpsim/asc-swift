// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct GameCenterAchievementLocalization: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks?

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case gameCenterAchievementLocalizations
    }

    public struct Attributes: Codable, Equatable, Sendable {
        public var locale: String?
        public var name: String?
        public var beforeEarnedDescription: String?
        public var afterEarnedDescription: String?

        public init(locale: String? = nil, name: String? = nil, beforeEarnedDescription: String? = nil, afterEarnedDescription: String? = nil) {
            self.locale = locale
            self.name = name
            self.beforeEarnedDescription = beforeEarnedDescription
            self.afterEarnedDescription = afterEarnedDescription
        }
    }

    public struct Relationships: Codable, Equatable, Sendable {
        public var gameCenterAchievement: GameCenterAchievement?
        public var gameCenterAchievementImage: GameCenterAchievementImage?

        public struct GameCenterAchievement: Codable, Equatable, Sendable {
            public var links: Links?
            public var data: Data?

            public struct Links: Codable, Equatable, Sendable {
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

            public struct Data: Codable, Equatable, Identifiable, Sendable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, CaseIterable, Codable, Sendable {
                    case gameCenterAchievements
                }

                public init(type: `Type` = .gameCenterAchievements, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public struct GameCenterAchievementImage: Codable, Equatable, Sendable {
            public var links: Links?
            public var data: Data?

            public struct Links: Codable, Equatable, Sendable {
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

            public struct Data: Codable, Equatable, Identifiable, Sendable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, CaseIterable, Codable, Sendable {
                    case gameCenterAchievementImages
                }

                public init(type: `Type` = .gameCenterAchievementImages, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public init(gameCenterAchievement: GameCenterAchievement? = nil, gameCenterAchievementImage: GameCenterAchievementImage? = nil) {
            self.gameCenterAchievement = gameCenterAchievement
            self.gameCenterAchievementImage = gameCenterAchievementImage
        }
    }

    public init(type: `Type` = .gameCenterAchievementLocalizations, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
