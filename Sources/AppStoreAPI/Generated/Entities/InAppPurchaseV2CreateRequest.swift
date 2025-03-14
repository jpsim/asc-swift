// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct InAppPurchaseV2CreateRequest: Codable, Equatable, Sendable {
    public var data: Data

    public struct Data: Codable, Equatable, Sendable {
        public var type: `Type`
        public var attributes: Attributes
        public var relationships: Relationships

        public enum `Type`: String, CaseIterable, Codable, Sendable {
            case inAppPurchases
        }

        public struct Attributes: Codable, Equatable, Sendable {
            public var name: String
            public var productID: String
            public var inAppPurchaseType: InAppPurchaseType
            public var reviewNote: String?
            public var isFamilySharable: Bool?

            public init(name: String, productID: String, inAppPurchaseType: InAppPurchaseType, reviewNote: String? = nil, isFamilySharable: Bool? = nil) {
                self.name = name
                self.productID = productID
                self.inAppPurchaseType = inAppPurchaseType
                self.reviewNote = reviewNote
                self.isFamilySharable = isFamilySharable
            }

            private enum CodingKeys: String, CodingKey {
                case name
                case productID = "productId"
                case inAppPurchaseType
                case reviewNote
                case isFamilySharable = "familySharable"
            }
        }

        public struct Relationships: Codable, Equatable, Sendable {
            public var app: App

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

            public init(app: App) {
                self.app = app
            }
        }

        public init(type: `Type` = .inAppPurchases, attributes: Attributes, relationships: Relationships) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
