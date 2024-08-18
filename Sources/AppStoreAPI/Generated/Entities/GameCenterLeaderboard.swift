// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct GameCenterLeaderboard: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks?

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case gameCenterLeaderboards
    }

    public struct Attributes: Codable, Equatable, Sendable {
        public var defaultFormatter: GameCenterLeaderboardFormatter?
        public var referenceName: String?
        public var vendorIdentifier: String?
        public var submissionType: SubmissionType?
        public var scoreSortType: ScoreSortType?
        public var scoreRangeStart: String?
        public var scoreRangeEnd: String?
        public var recurrenceStartDate: Date?
        public var recurrenceDuration: String?
        public var recurrenceRule: String?
        public var isArchived: Bool?

        public enum SubmissionType: String, CaseIterable, Codable, Sendable {
            case bestScore = "BEST_SCORE"
            case mostRecentScore = "MOST_RECENT_SCORE"
        }

        public enum ScoreSortType: String, CaseIterable, Codable, Sendable {
            case asc = "ASC"
            case desc = "DESC"
        }

        public init(defaultFormatter: GameCenterLeaderboardFormatter? = nil, referenceName: String? = nil, vendorIdentifier: String? = nil, submissionType: SubmissionType? = nil, scoreSortType: ScoreSortType? = nil, scoreRangeStart: String? = nil, scoreRangeEnd: String? = nil, recurrenceStartDate: Date? = nil, recurrenceDuration: String? = nil, recurrenceRule: String? = nil, isArchived: Bool? = nil) {
            self.defaultFormatter = defaultFormatter
            self.referenceName = referenceName
            self.vendorIdentifier = vendorIdentifier
            self.submissionType = submissionType
            self.scoreSortType = scoreSortType
            self.scoreRangeStart = scoreRangeStart
            self.scoreRangeEnd = scoreRangeEnd
            self.recurrenceStartDate = recurrenceStartDate
            self.recurrenceDuration = recurrenceDuration
            self.recurrenceRule = recurrenceRule
            self.isArchived = isArchived
        }

        private enum CodingKeys: String, CodingKey {
            case defaultFormatter
            case referenceName
            case vendorIdentifier
            case submissionType
            case scoreSortType
            case scoreRangeStart
            case scoreRangeEnd
            case recurrenceStartDate
            case recurrenceDuration
            case recurrenceRule
            case isArchived = "archived"
        }
    }

    public struct Relationships: Codable, Equatable, Sendable {
        public var gameCenterDetail: GameCenterDetail?
        public var gameCenterGroup: GameCenterGroup?
        public var groupLeaderboard: GroupLeaderboard?
        public var gameCenterLeaderboardSets: GameCenterLeaderboardSets?
        public var localizations: Localizations?
        public var releases: Releases?

        public struct GameCenterDetail: Codable, Equatable, Sendable {
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

        public struct GameCenterGroup: Codable, Equatable, Sendable {
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
                    case gameCenterGroups
                }

                public init(type: `Type` = .gameCenterGroups, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public struct GroupLeaderboard: Codable, Equatable, Sendable {
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
                    case gameCenterLeaderboards
                }

                public init(type: `Type` = .gameCenterLeaderboards, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public struct GameCenterLeaderboardSets: Codable, Equatable, Sendable {
            public var links: Links?
            public var meta: PagingInformation?
            public var data: [Datum]?

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

            public struct Datum: Codable, Equatable, Identifiable, Sendable {
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

            public init(links: Links? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
                self.links = links
                self.meta = meta
                self.data = data
            }
        }

        public struct Localizations: Codable, Equatable, Sendable {
            public var links: Links?
            public var meta: PagingInformation?
            public var data: [Datum]?

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

            public struct Datum: Codable, Equatable, Identifiable, Sendable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, CaseIterable, Codable, Sendable {
                    case gameCenterLeaderboardLocalizations
                }

                public init(type: `Type` = .gameCenterLeaderboardLocalizations, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
                self.links = links
                self.meta = meta
                self.data = data
            }
        }

        public struct Releases: Codable, Equatable, Sendable {
            public var links: Links?
            public var meta: PagingInformation?
            public var data: [Datum]?

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

            public struct Datum: Codable, Equatable, Identifiable, Sendable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, CaseIterable, Codable, Sendable {
                    case gameCenterLeaderboardReleases
                }

                public init(type: `Type` = .gameCenterLeaderboardReleases, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
                self.links = links
                self.meta = meta
                self.data = data
            }
        }

        public init(gameCenterDetail: GameCenterDetail? = nil, gameCenterGroup: GameCenterGroup? = nil, groupLeaderboard: GroupLeaderboard? = nil, gameCenterLeaderboardSets: GameCenterLeaderboardSets? = nil, localizations: Localizations? = nil, releases: Releases? = nil) {
            self.gameCenterDetail = gameCenterDetail
            self.gameCenterGroup = gameCenterGroup
            self.groupLeaderboard = groupLeaderboard
            self.gameCenterLeaderboardSets = gameCenterLeaderboardSets
            self.localizations = localizations
            self.releases = releases
        }
    }

    public init(type: `Type` = .gameCenterLeaderboards, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
