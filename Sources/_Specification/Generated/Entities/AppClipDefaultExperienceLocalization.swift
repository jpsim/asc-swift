// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppClipDefaultExperienceLocalization: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks?

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case appClipDefaultExperienceLocalizations
    }

    public struct Attributes: Codable, Equatable, Sendable {
        public var locale: String?
        public var subtitle: String?

        public init(locale: String? = nil, subtitle: String? = nil) {
            self.locale = locale
            self.subtitle = subtitle
        }
    }

    public struct Relationships: Codable, Equatable, Sendable {
        public var appClipDefaultExperience: AppClipDefaultExperience?
        public var appClipHeaderImage: AppClipHeaderImage?

        public struct AppClipDefaultExperience: Codable, Equatable, Sendable {
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
                    case appClipDefaultExperiences
                }

                public init(type: `Type` = .appClipDefaultExperiences, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public struct AppClipHeaderImage: Codable, Equatable, Sendable {
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
                    case appClipHeaderImages
                }

                public init(type: `Type` = .appClipHeaderImages, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public init(appClipDefaultExperience: AppClipDefaultExperience? = nil, appClipHeaderImage: AppClipHeaderImage? = nil) {
            self.appClipDefaultExperience = appClipDefaultExperience
            self.appClipHeaderImage = appClipHeaderImage
        }
    }

    public init(type: `Type` = .appClipDefaultExperienceLocalizations, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
