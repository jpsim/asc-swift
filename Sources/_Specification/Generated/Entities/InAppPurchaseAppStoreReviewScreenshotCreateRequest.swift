// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct InAppPurchaseAppStoreReviewScreenshotCreateRequest: Codable, Equatable {
    public var data: Data

    public struct Data: Codable, Equatable {
        public var type: `Type`
        public var attributes: Attributes
        public var relationships: Relationships

        public enum `Type`: String, Codable, CaseIterable {
            case inAppPurchaseAppStoreReviewScreenshots
        }

        public struct Attributes: Codable, Equatable {
            public var fileSize: Int
            public var fileName: String

            public init(fileSize: Int, fileName: String) {
                self.fileSize = fileSize
                self.fileName = fileName
            }
        }

        public struct Relationships: Codable, Equatable {
            public var inAppPurchaseV2: InAppPurchaseV2

            public struct InAppPurchaseV2: Codable, Equatable {
                public var data: Data

                public struct Data: Codable, Equatable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case inAppPurchases
                    }

                    public init(type: `Type` = .inAppPurchases, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data) {
                    self.data = data
                }
            }

            public init(inAppPurchaseV2: InAppPurchaseV2) {
                self.inAppPurchaseV2 = inAppPurchaseV2
            }
        }

        public init(type: `Type` = .inAppPurchaseAppStoreReviewScreenshots, attributes: Attributes, relationships: Relationships) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
