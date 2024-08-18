// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct RoutingAppCoverage: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks?

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case routingAppCoverages
    }

    public struct Attributes: Codable, Equatable, Sendable {
        public var fileSize: Int?
        public var fileName: String?
        public var sourceFileChecksum: String?
        public var uploadOperations: [UploadOperation]?
        public var assetDeliveryState: AppMediaAssetState?

        public init(fileSize: Int? = nil, fileName: String? = nil, sourceFileChecksum: String? = nil, uploadOperations: [UploadOperation]? = nil, assetDeliveryState: AppMediaAssetState? = nil) {
            self.fileSize = fileSize
            self.fileName = fileName
            self.sourceFileChecksum = sourceFileChecksum
            self.uploadOperations = uploadOperations
            self.assetDeliveryState = assetDeliveryState
        }
    }

    public struct Relationships: Codable, Equatable, Sendable {
        public var appStoreVersion: AppStoreVersion?

        public struct AppStoreVersion: Codable, Equatable, Sendable {
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
                    case appStoreVersions
                }

                public init(type: `Type` = .appStoreVersions, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public init(appStoreVersion: AppStoreVersion? = nil) {
            self.appStoreVersion = appStoreVersion
        }
    }

    public init(type: `Type` = .routingAppCoverages, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
