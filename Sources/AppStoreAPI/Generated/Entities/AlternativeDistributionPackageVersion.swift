// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AlternativeDistributionPackageVersion: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks?

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case alternativeDistributionPackageVersions
    }

    public struct Attributes: Codable, Equatable, Sendable {
        public var url: URL?
        public var urlExpirationDate: Date?
        public var version: String?
        public var fileChecksum: String?
        public var state: State?

        public enum State: String, CaseIterable, Codable, Sendable {
            case completed = "COMPLETED"
            case replaced = "REPLACED"
        }

        public init(url: URL? = nil, urlExpirationDate: Date? = nil, version: String? = nil, fileChecksum: String? = nil, state: State? = nil) {
            self.url = url
            self.urlExpirationDate = urlExpirationDate
            self.version = version
            self.fileChecksum = fileChecksum
            self.state = state
        }
    }

    public struct Relationships: Codable, Equatable, Sendable {
        public var variants: Variants?
        public var deltas: Deltas?
        public var alternativeDistributionPackage: AlternativeDistributionPackage?

        public struct Variants: Codable, Equatable, Sendable {
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
                    case alternativeDistributionPackageVariants
                }

                public init(type: `Type` = .alternativeDistributionPackageVariants, id: String) {
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

        public struct Deltas: Codable, Equatable, Sendable {
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
                    case alternativeDistributionPackageDeltas
                }

                public init(type: `Type` = .alternativeDistributionPackageDeltas, id: String) {
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

        public struct AlternativeDistributionPackage: Codable, Equatable, Sendable {
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
                    case alternativeDistributionPackages
                }

                public init(type: `Type` = .alternativeDistributionPackages, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public init(variants: Variants? = nil, deltas: Deltas? = nil, alternativeDistributionPackage: AlternativeDistributionPackage? = nil) {
            self.variants = variants
            self.deltas = deltas
            self.alternativeDistributionPackage = alternativeDistributionPackage
        }
    }

    public init(type: `Type` = .alternativeDistributionPackageVersions, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
