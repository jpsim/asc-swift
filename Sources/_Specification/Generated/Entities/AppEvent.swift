// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppEvent: Codable, Equatable, Identifiable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks?

    public enum `Type`: String, Codable, CaseIterable {
        case appEvents
    }

    public struct Attributes: Codable, Equatable {
        public var referenceName: String?
        public var badge: Badge?
        public var eventState: EventState?
        public var deepLink: URL?
        public var purchaseRequirement: PurchaseRequirement?
        public var primaryLocale: String?
        public var priority: Priority?
        public var purpose: Purpose?
        public var territorySchedules: [TerritorySchedule]?
        public var archivedTerritorySchedules: [ArchivedTerritorySchedule]?

        public enum Badge: String, Codable, CaseIterable {
            case liveEvent = "LIVE_EVENT"
            case premiere = "PREMIERE"
            case challenge = "CHALLENGE"
            case competition = "COMPETITION"
            case newSeason = "NEW_SEASON"
            case majorUpdate = "MAJOR_UPDATE"
            case specialEvent = "SPECIAL_EVENT"
        }

        public enum EventState: String, Codable, CaseIterable {
            case draft = "DRAFT"
            case readyForReview = "READY_FOR_REVIEW"
            case waitingForReview = "WAITING_FOR_REVIEW"
            case inReview = "IN_REVIEW"
            case rejected = "REJECTED"
            case accepted = "ACCEPTED"
            case approved = "APPROVED"
            case published = "PUBLISHED"
            case past = "PAST"
            case archived = "ARCHIVED"
        }

        public enum PurchaseRequirement: String, Codable, CaseIterable {
            case noCostAssociated = "NO_COST_ASSOCIATED"
            case inAppPurchase = "IN_APP_PURCHASE"
            case subscription = "SUBSCRIPTION"
            case inAppPurchaseAndSubscription = "IN_APP_PURCHASE_AND_SUBSCRIPTION"
            case inAppPurchaseOrSubscription = "IN_APP_PURCHASE_OR_SUBSCRIPTION"
        }

        public enum Priority: String, Codable, CaseIterable {
            case high = "HIGH"
            case normal = "NORMAL"
        }

        public enum Purpose: String, Codable, CaseIterable {
            case appropriateForAllUsers = "APPROPRIATE_FOR_ALL_USERS"
            case attractNewUsers = "ATTRACT_NEW_USERS"
            case keepActiveUsersInformed = "KEEP_ACTIVE_USERS_INFORMED"
            case bringBackLapsedUsers = "BRING_BACK_LAPSED_USERS"
        }

        public struct TerritorySchedule: Codable, Equatable {
            public var territories: [String]?
            public var publishStart: Date?
            public var eventStart: Date?
            public var eventEnd: Date?

            public init(territories: [String]? = nil, publishStart: Date? = nil, eventStart: Date? = nil, eventEnd: Date? = nil) {
                self.territories = territories
                self.publishStart = publishStart
                self.eventStart = eventStart
                self.eventEnd = eventEnd
            }
        }

        public struct ArchivedTerritorySchedule: Codable, Equatable {
            public var territories: [String]?
            public var publishStart: Date?
            public var eventStart: Date?
            public var eventEnd: Date?

            public init(territories: [String]? = nil, publishStart: Date? = nil, eventStart: Date? = nil, eventEnd: Date? = nil) {
                self.territories = territories
                self.publishStart = publishStart
                self.eventStart = eventStart
                self.eventEnd = eventEnd
            }
        }

        public init(referenceName: String? = nil, badge: Badge? = nil, eventState: EventState? = nil, deepLink: URL? = nil, purchaseRequirement: PurchaseRequirement? = nil, primaryLocale: String? = nil, priority: Priority? = nil, purpose: Purpose? = nil, territorySchedules: [TerritorySchedule]? = nil, archivedTerritorySchedules: [ArchivedTerritorySchedule]? = nil) {
            self.referenceName = referenceName
            self.badge = badge
            self.eventState = eventState
            self.deepLink = deepLink
            self.purchaseRequirement = purchaseRequirement
            self.primaryLocale = primaryLocale
            self.priority = priority
            self.purpose = purpose
            self.territorySchedules = territorySchedules
            self.archivedTerritorySchedules = archivedTerritorySchedules
        }
    }

    public struct Relationships: Codable, Equatable {
        public var localizations: Localizations?

        public struct Localizations: Codable, Equatable {
            public var links: Links?
            public var meta: PagingInformation?
            public var data: [Datum]?

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

            public struct Datum: Codable, Equatable, Identifiable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, Codable, CaseIterable {
                    case appEventLocalizations
                }

                public init(type: `Type`, id: String) {
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

        public init(localizations: Localizations? = nil) {
            self.localizations = localizations
        }
    }

    public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
