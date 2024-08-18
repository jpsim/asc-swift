// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AppStoreVersionCreateRequest: Codable, Equatable, Sendable {
    public var data: Data

    public struct Data: Codable, Equatable, Sendable {
        public var type: `Type`
        public var attributes: Attributes
        public var relationships: Relationships

        public enum `Type`: String, CaseIterable, Codable, Sendable {
            case appStoreVersions
        }

        public struct Attributes: Codable, Equatable, Sendable {
            public var platform: Platform
            public var versionString: String
            public var copyright: String?
            public var reviewType: ReviewType?
            public var releaseType: ReleaseType?
            public var earliestReleaseDate: Date?

            public enum ReviewType: String, CaseIterable, Codable, Sendable {
                case appStore = "APP_STORE"
                case notarization = "NOTARIZATION"
            }

            public enum ReleaseType: String, CaseIterable, Codable, Sendable {
                case manual = "MANUAL"
                case afterApproval = "AFTER_APPROVAL"
                case scheduled = "SCHEDULED"
            }

            public init(platform: Platform, versionString: String, copyright: String? = nil, reviewType: ReviewType? = nil, releaseType: ReleaseType? = nil, earliestReleaseDate: Date? = nil) {
                self.platform = platform
                self.versionString = versionString
                self.copyright = copyright
                self.reviewType = reviewType
                self.releaseType = releaseType
                self.earliestReleaseDate = earliestReleaseDate
            }
        }

        public struct Relationships: Codable, Equatable, Sendable {
            public var app: App
            public var appStoreVersionLocalizations: AppStoreVersionLocalizations?
            public var build: Build?

            public struct App: Codable, Equatable, Sendable {
                public var data: Data

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

                public init(data: Data) {
                    self.data = data
                }
            }

            public struct AppStoreVersionLocalizations: Codable, Equatable, Sendable {
                public var data: [Datum]?

                public struct Datum: Codable, Equatable, Identifiable, Sendable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, CaseIterable, Codable, Sendable {
                        case appStoreVersionLocalizations
                    }

                    public init(type: `Type` = .appStoreVersionLocalizations, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: [Datum]? = nil) {
                    self.data = data
                }
            }

            public struct Build: Codable, Equatable, Sendable {
                public var data: Data?

                public struct Data: Codable, Equatable, Identifiable, Sendable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, CaseIterable, Codable, Sendable {
                        case builds
                    }

                    public init(type: `Type` = .builds, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data? = nil) {
                    self.data = data
                }
            }

            public init(app: App, appStoreVersionLocalizations: AppStoreVersionLocalizations? = nil, build: Build? = nil) {
                self.app = app
                self.appStoreVersionLocalizations = appStoreVersionLocalizations
                self.build = build
            }
        }

        public init(type: `Type` = .appStoreVersions, attributes: Attributes, relationships: Relationships) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
