// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct GameCenterLeaderboardSetRelease: Codable, Equatable, Identifiable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks?

    public enum `Type`: String, Codable, CaseIterable {
        case gameCenterLeaderboardSetReleases
    }

    public struct Attributes: Codable, Equatable {
        public var isLive: Bool?

        public init(isLive: Bool? = nil) {
            self.isLive = isLive
        }

        private enum CodingKeys: String, CodingKey {
            case isLive = "live"
        }
    }

    public struct Relationships: Codable, Equatable {
        public var gameCenterDetail: GameCenterDetail?
        public var gameCenterLeaderboardSet: GameCenterLeaderboardSet?

        public struct GameCenterDetail: Codable, Equatable {
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
                    case gameCenterDetails
                }

                public init(type: `Type` = .gameCenterDetails, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public struct GameCenterLeaderboardSet: Codable, Equatable {
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
                    case gameCenterLeaderboardSets
                }

                public init(type: `Type` = .gameCenterLeaderboardSets, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public init(gameCenterDetail: GameCenterDetail? = nil, gameCenterLeaderboardSet: GameCenterLeaderboardSet? = nil) {
            self.gameCenterDetail = gameCenterDetail
            self.gameCenterLeaderboardSet = gameCenterLeaderboardSet
        }
    }

    public init(type: `Type` = .gameCenterLeaderboardSetReleases, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
