// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AppEventVideoClip: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks?

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case appEventVideoClips
    }

    public struct Attributes: Codable, Equatable, Sendable {
        public var fileSize: Int?
        public var fileName: String?
        public var previewFrameTimeCode: String?
        public var videoURL: String?
        public var previewImage: ImageAsset?
        public var uploadOperations: [UploadOperation]?
        public var assetDeliveryState: AppMediaAssetState?
        public var appEventAssetType: AppEventAssetType?

        public init(fileSize: Int? = nil, fileName: String? = nil, previewFrameTimeCode: String? = nil, videoURL: String? = nil, previewImage: ImageAsset? = nil, uploadOperations: [UploadOperation]? = nil, assetDeliveryState: AppMediaAssetState? = nil, appEventAssetType: AppEventAssetType? = nil) {
            self.fileSize = fileSize
            self.fileName = fileName
            self.previewFrameTimeCode = previewFrameTimeCode
            self.videoURL = videoURL
            self.previewImage = previewImage
            self.uploadOperations = uploadOperations
            self.assetDeliveryState = assetDeliveryState
            self.appEventAssetType = appEventAssetType
        }

        private enum CodingKeys: String, CodingKey {
            case fileSize
            case fileName
            case previewFrameTimeCode
            case videoURL = "videoUrl"
            case previewImage
            case uploadOperations
            case assetDeliveryState
            case appEventAssetType
        }
    }

    public struct Relationships: Codable, Equatable, Sendable {
        public var appEventLocalization: AppEventLocalization?

        public struct AppEventLocalization: Codable, Equatable, Sendable {
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
                    case appEventLocalizations
                }

                public init(type: `Type` = .appEventLocalizations, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public init(appEventLocalization: AppEventLocalization? = nil) {
            self.appEventLocalization = appEventLocalization
        }
    }

    public init(type: `Type` = .appEventVideoClips, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
