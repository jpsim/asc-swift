// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct BundleID: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks?

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case bundleIDs = "bundleIds"
    }

    public struct Attributes: Codable, Equatable, Sendable {
        public var name: String?
        public var platform: BundleIDPlatform?
        public var identifier: String?
        public var seedID: String?

        public init(name: String? = nil, platform: BundleIDPlatform? = nil, identifier: String? = nil, seedID: String? = nil) {
            self.name = name
            self.platform = platform
            self.identifier = identifier
            self.seedID = seedID
        }

        private enum CodingKeys: String, CodingKey {
            case name
            case platform
            case identifier
            case seedID = "seedId"
        }
    }

    public struct Relationships: Codable, Equatable, Sendable {
        public var profiles: Profiles?
        public var bundleIDCapabilities: BundleIDCapabilities?
        public var app: App?

        public struct Profiles: Codable, Equatable, Sendable {
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
                    case profiles
                }

                public init(type: `Type` = .profiles, id: String) {
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

        public struct BundleIDCapabilities: Codable, Equatable, Sendable {
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
                    case bundleIDCapabilities = "bundleIdCapabilities"
                }

                public init(type: `Type` = .bundleIDCapabilities, id: String) {
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

        public struct App: Codable, Equatable, Sendable {
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
                    case apps
                }

                public init(type: `Type` = .apps, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public init(profiles: Profiles? = nil, bundleIDCapabilities: BundleIDCapabilities? = nil, app: App? = nil) {
            self.profiles = profiles
            self.bundleIDCapabilities = bundleIDCapabilities
            self.app = app
        }

        private enum CodingKeys: String, CodingKey {
            case profiles
            case bundleIDCapabilities = "bundleIdCapabilities"
            case app
        }
    }

    public init(type: `Type` = .bundleIDs, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
