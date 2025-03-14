// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AppEventLocalization: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks?

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case appEventLocalizations
    }

    public struct Attributes: Codable, Equatable, Sendable {
        public var locale: String?
        public var name: String?
        public var shortDescription: String?
        public var longDescription: String?

        public init(locale: String? = nil, name: String? = nil, shortDescription: String? = nil, longDescription: String? = nil) {
            self.locale = locale
            self.name = name
            self.shortDescription = shortDescription
            self.longDescription = longDescription
        }
    }

    public struct Relationships: Codable, Equatable, Sendable {
        public var appEvent: AppEvent?
        public var appEventScreenshots: AppEventScreenshots?
        public var appEventVideoClips: AppEventVideoClips?

        public struct AppEvent: Codable, Equatable, Sendable {
            public var data: Data?

            public struct Data: Codable, Equatable, Identifiable, Sendable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, CaseIterable, Codable, Sendable {
                    case appEvents
                }

                public init(type: `Type` = .appEvents, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(data: Data? = nil) {
                self.data = data
            }
        }

        public struct AppEventScreenshots: Codable, Equatable, Sendable {
            public var links: RelationshipLinks?
            public var meta: PagingInformation?
            public var data: [Datum]?

            public struct Datum: Codable, Equatable, Identifiable, Sendable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, CaseIterable, Codable, Sendable {
                    case appEventScreenshots
                }

                public init(type: `Type` = .appEventScreenshots, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: RelationshipLinks? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
                self.links = links
                self.meta = meta
                self.data = data
            }
        }

        public struct AppEventVideoClips: Codable, Equatable, Sendable {
            public var links: RelationshipLinks?
            public var meta: PagingInformation?
            public var data: [Datum]?

            public struct Datum: Codable, Equatable, Identifiable, Sendable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, CaseIterable, Codable, Sendable {
                    case appEventVideoClips
                }

                public init(type: `Type` = .appEventVideoClips, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: RelationshipLinks? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
                self.links = links
                self.meta = meta
                self.data = data
            }
        }

        public init(appEvent: AppEvent? = nil, appEventScreenshots: AppEventScreenshots? = nil, appEventVideoClips: AppEventVideoClips? = nil) {
            self.appEvent = appEvent
            self.appEventScreenshots = appEventScreenshots
            self.appEventVideoClips = appEventVideoClips
        }
    }

    public init(type: `Type` = .appEventLocalizations, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
