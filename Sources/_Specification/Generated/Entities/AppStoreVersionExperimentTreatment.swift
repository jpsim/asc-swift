// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppStoreVersionExperimentTreatment: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks?

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case appStoreVersionExperimentTreatments
    }

    public struct Attributes: Codable, Equatable, Sendable {
        public var name: String?
        public var appIcon: ImageAsset?
        public var appIconName: String?
        public var promotedDate: Date?

        public init(name: String? = nil, appIcon: ImageAsset? = nil, appIconName: String? = nil, promotedDate: Date? = nil) {
            self.name = name
            self.appIcon = appIcon
            self.appIconName = appIconName
            self.promotedDate = promotedDate
        }
    }

    public struct Relationships: Codable, Equatable, Sendable {
        public var appStoreVersionExperiment: AppStoreVersionExperiment?
        public var appStoreVersionExperimentV2: AppStoreVersionExperimentV2?
        public var appStoreVersionExperimentTreatmentLocalizations: AppStoreVersionExperimentTreatmentLocalizations?

        public struct AppStoreVersionExperiment: Codable, Equatable, Sendable {
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
                    case appStoreVersionExperiments
                }

                public init(type: `Type` = .appStoreVersionExperiments, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public struct AppStoreVersionExperimentV2: Codable, Equatable, Sendable {
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
                    case appStoreVersionExperiments
                }

                public init(type: `Type` = .appStoreVersionExperiments, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public struct AppStoreVersionExperimentTreatmentLocalizations: Codable, Equatable, Sendable {
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
                    case appStoreVersionExperimentTreatmentLocalizations
                }

                public init(type: `Type` = .appStoreVersionExperimentTreatmentLocalizations, id: String) {
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

        public init(appStoreVersionExperiment: AppStoreVersionExperiment? = nil, appStoreVersionExperimentV2: AppStoreVersionExperimentV2? = nil, appStoreVersionExperimentTreatmentLocalizations: AppStoreVersionExperimentTreatmentLocalizations? = nil) {
            self.appStoreVersionExperiment = appStoreVersionExperiment
            self.appStoreVersionExperimentV2 = appStoreVersionExperimentV2
            self.appStoreVersionExperimentTreatmentLocalizations = appStoreVersionExperimentTreatmentLocalizations
        }
    }

    public init(type: `Type` = .appStoreVersionExperimentTreatments, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
