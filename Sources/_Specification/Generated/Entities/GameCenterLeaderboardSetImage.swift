// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct GameCenterLeaderboardSetImage: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks?

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case gameCenterLeaderboardSetImages
    }

    public struct Attributes: Codable, Equatable, Sendable {
        public var fileSize: Int?
        public var fileName: String?
        public var imageAsset: ImageAsset?
        public var uploadOperations: [UploadOperation]?
        public var assetDeliveryState: AppMediaAssetState?

        public init(fileSize: Int? = nil, fileName: String? = nil, imageAsset: ImageAsset? = nil, uploadOperations: [UploadOperation]? = nil, assetDeliveryState: AppMediaAssetState? = nil) {
            self.fileSize = fileSize
            self.fileName = fileName
            self.imageAsset = imageAsset
            self.uploadOperations = uploadOperations
            self.assetDeliveryState = assetDeliveryState
        }
    }

    public struct Relationships: Codable, Equatable, Sendable {
        public var gameCenterLeaderboardSetLocalization: GameCenterLeaderboardSetLocalization?

        public struct GameCenterLeaderboardSetLocalization: Codable, Equatable, Sendable {
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
                    case gameCenterLeaderboardSetLocalizations
                }

                public init(type: `Type` = .gameCenterLeaderboardSetLocalizations, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public init(gameCenterLeaderboardSetLocalization: GameCenterLeaderboardSetLocalization? = nil) {
            self.gameCenterLeaderboardSetLocalization = gameCenterLeaderboardSetLocalization
        }
    }

    public init(type: `Type` = .gameCenterLeaderboardSetImages, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
