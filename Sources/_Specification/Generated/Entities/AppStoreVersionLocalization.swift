// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppStoreVersionLocalization: Codable, Hashable, Identifiable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks?

    public enum `Type`: String, Codable, CaseIterable {
        case appStoreVersionLocalizations
    }

    public struct Attributes: Codable, Hashable {
        public var description: String?
        public var locale: String?
        public var keywords: String?
        public var marketingURL: URL?
        public var promotionalText: String?
        public var supportURL: URL?
        public var whatsNew: String?

        public init(description: String? = nil, locale: String? = nil, keywords: String? = nil, marketingURL: URL? = nil, promotionalText: String? = nil, supportURL: URL? = nil, whatsNew: String? = nil) {
            self.description = description
            self.locale = locale
            self.keywords = keywords
            self.marketingURL = marketingURL
            self.promotionalText = promotionalText
            self.supportURL = supportURL
            self.whatsNew = whatsNew
        }

        private enum CodingKeys: String, CodingKey {
            case description
            case locale
            case keywords
            case marketingURL = "marketingUrl"
            case promotionalText
            case supportURL = "supportUrl"
            case whatsNew
        }
    }

    public struct Relationships: Codable, Hashable {
        public var appStoreVersion: AppStoreVersion?
        public var appScreenshotSets: AppScreenshotSets?
        public var appPreviewSets: AppPreviewSets?

        public struct AppStoreVersion: Codable, Hashable {
            public var links: Links?
            public var data: Data?

            public struct Links: Codable, Hashable {
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

            public struct Data: Codable, Hashable, Identifiable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, Codable, CaseIterable {
                    case appStoreVersions
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

        public struct AppScreenshotSets: Codable, Hashable {
            public var links: Links?
            public var meta: PagingInformation?
            public var data: [Datum]?

            public struct Links: Codable, Hashable {
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

            public struct Datum: Codable, Hashable, Identifiable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, Codable, CaseIterable {
                    case appScreenshotSets
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

        public struct AppPreviewSets: Codable, Hashable {
            public var links: Links?
            public var meta: PagingInformation?
            public var data: [Datum]?

            public struct Links: Codable, Hashable {
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

            public struct Datum: Codable, Hashable, Identifiable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, Codable, CaseIterable {
                    case appPreviewSets
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

        public init(appStoreVersion: AppStoreVersion? = nil, appScreenshotSets: AppScreenshotSets? = nil, appPreviewSets: AppPreviewSets? = nil) {
            self.appStoreVersion = appStoreVersion
            self.appScreenshotSets = appScreenshotSets
            self.appPreviewSets = appPreviewSets
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
