// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct InAppPurchaseAppStoreReviewScreenshot: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks?

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case inAppPurchaseAppStoreReviewScreenshots
    }

    public struct Attributes: Codable, Equatable, Sendable {
        public var fileSize: Int?
        public var fileName: String?
        public var sourceFileChecksum: String?
        public var imageAsset: ImageAsset?
        public var assetToken: String?
        public var assetType: String?
        public var uploadOperations: [UploadOperation]?
        public var assetDeliveryState: AppMediaAssetState?

        public init(fileSize: Int? = nil, fileName: String? = nil, sourceFileChecksum: String? = nil, imageAsset: ImageAsset? = nil, assetToken: String? = nil, assetType: String? = nil, uploadOperations: [UploadOperation]? = nil, assetDeliveryState: AppMediaAssetState? = nil) {
            self.fileSize = fileSize
            self.fileName = fileName
            self.sourceFileChecksum = sourceFileChecksum
            self.imageAsset = imageAsset
            self.assetToken = assetToken
            self.assetType = assetType
            self.uploadOperations = uploadOperations
            self.assetDeliveryState = assetDeliveryState
        }
    }

    public struct Relationships: Codable, Equatable, Sendable {
        public var inAppPurchaseV2: InAppPurchaseV2?

        public struct InAppPurchaseV2: Codable, Equatable, Sendable {
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
                    case inAppPurchases
                }

                public init(type: `Type` = .inAppPurchases, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public init(inAppPurchaseV2: InAppPurchaseV2? = nil) {
            self.inAppPurchaseV2 = inAppPurchaseV2
        }
    }

    public init(type: `Type` = .inAppPurchaseAppStoreReviewScreenshots, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
