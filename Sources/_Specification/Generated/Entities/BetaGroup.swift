// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct BetaGroup: Codable, Equatable, Identifiable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks?

    public enum `Type`: String, Codable, CaseIterable {
        case betaGroups
    }

    public struct Attributes: Codable, Equatable {
        public var name: String?
        public var createdDate: Date?
        public var isInternalGroup: Bool?
        public var hasAccessToAllBuilds: Bool?
        public var isPublicLinkEnabled: Bool?
        public var publicLinkID: String?
        public var isPublicLinkLimitEnabled: Bool?
        public var publicLinkLimit: Int?
        public var publicLink: String?
        public var isFeedbackEnabled: Bool?
        public var isIosBuildsAvailableForAppleSiliconMac: Bool?

        public init(name: String? = nil, createdDate: Date? = nil, isInternalGroup: Bool? = nil, hasAccessToAllBuilds: Bool? = nil, isPublicLinkEnabled: Bool? = nil, publicLinkID: String? = nil, isPublicLinkLimitEnabled: Bool? = nil, publicLinkLimit: Int? = nil, publicLink: String? = nil, isFeedbackEnabled: Bool? = nil, isIosBuildsAvailableForAppleSiliconMac: Bool? = nil) {
            self.name = name
            self.createdDate = createdDate
            self.isInternalGroup = isInternalGroup
            self.hasAccessToAllBuilds = hasAccessToAllBuilds
            self.isPublicLinkEnabled = isPublicLinkEnabled
            self.publicLinkID = publicLinkID
            self.isPublicLinkLimitEnabled = isPublicLinkLimitEnabled
            self.publicLinkLimit = publicLinkLimit
            self.publicLink = publicLink
            self.isFeedbackEnabled = isFeedbackEnabled
            self.isIosBuildsAvailableForAppleSiliconMac = isIosBuildsAvailableForAppleSiliconMac
        }

        private enum CodingKeys: String, CodingKey {
            case name
            case createdDate
            case isInternalGroup
            case hasAccessToAllBuilds
            case isPublicLinkEnabled = "publicLinkEnabled"
            case publicLinkID = "publicLinkId"
            case isPublicLinkLimitEnabled = "publicLinkLimitEnabled"
            case publicLinkLimit
            case publicLink
            case isFeedbackEnabled = "feedbackEnabled"
            case isIosBuildsAvailableForAppleSiliconMac = "iosBuildsAvailableForAppleSiliconMac"
        }
    }

    public struct Relationships: Codable, Equatable {
        public var app: App?
        public var builds: Builds?
        public var betaTesters: BetaTesters?

        public struct App: Codable, Equatable {
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
                    case apps
                }

                public init(type: `Type`, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public struct Builds: Codable, Equatable {
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
                    case builds
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

        public struct BetaTesters: Codable, Equatable {
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
                    case betaTesters
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

        public init(app: App? = nil, builds: Builds? = nil, betaTesters: BetaTesters? = nil) {
            self.app = app
            self.builds = builds
            self.betaTesters = betaTesters
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
