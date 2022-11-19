// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation

public struct AppCustomProductPageCreateRequest: Codable, Hashable {
    public var data: Data
    public var included: [IncludedItem]?

    public struct Data: Codable, Hashable {
        public var type: `Type`
        public var attributes: Attributes
        public var relationships: Relationships

        public enum `Type`: String, Codable, CaseIterable {
            case appCustomProductPages
        }

        public struct Attributes: Codable, Hashable {
            public var name: String

            public init(name: String) {
                self.name = name
            }
        }

        public struct Relationships: Codable, Hashable {
            public var app: App
            public var appCustomProductPageVersions: AppCustomProductPageVersions?
            public var appStoreVersionTemplate: AppStoreVersionTemplate?
            public var customProductPageTemplate: CustomProductPageTemplate?

            public struct App: Codable, Hashable {
                public var data: Data

                public struct Data: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case apps
                    }

                    public init(type: `Type`, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data) {
                    self.data = data
                }
            }

            public struct AppCustomProductPageVersions: Codable, Hashable {
                public var data: [Datum]?

                public struct Datum: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case appCustomProductPageVersions
                    }

                    public init(type: `Type`, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: [Datum]? = nil) {
                    self.data = data
                }
            }

            public struct AppStoreVersionTemplate: Codable, Hashable {
                public var data: Data?

                public struct Data: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case appStoreVersions
                    }

                    public init(type: `Type`, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data? = nil) {
                    self.data = data
                }
            }

            public struct CustomProductPageTemplate: Codable, Hashable {
                public var data: Data?

                public struct Data: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case appCustomProductPages
                    }

                    public init(type: `Type`, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data? = nil) {
                    self.data = data
                }
            }

            public init(app: App, appCustomProductPageVersions: AppCustomProductPageVersions? = nil, appStoreVersionTemplate: AppStoreVersionTemplate? = nil, customProductPageTemplate: CustomProductPageTemplate? = nil) {
                self.app = app
                self.appCustomProductPageVersions = appCustomProductPageVersions
                self.appStoreVersionTemplate = appStoreVersionTemplate
                self.customProductPageTemplate = customProductPageTemplate
            }
        }

        public init(type: `Type`, attributes: Attributes, relationships: Relationships) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public enum IncludedItem: Codable, Hashable {
        case appCustomProductPageLocalizationInlineCreate(AppCustomProductPageLocalizationInlineCreate)
        case appCustomProductPageVersionInlineCreate(AppCustomProductPageVersionInlineCreate)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(AppCustomProductPageLocalizationInlineCreate.self) {
                self = .appCustomProductPageLocalizationInlineCreate(value)
            } else if let value = try? container.decode(AppCustomProductPageVersionInlineCreate.self) {
                self = .appCustomProductPageVersionInlineCreate(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (AppCustomProductPageLocalizationInlineCreate, AppCustomProductPageVersionInlineCreate)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .appCustomProductPageLocalizationInlineCreate(let value): try container.encode(value)
            case .appCustomProductPageVersionInlineCreate(let value): try container.encode(value)
            }
        }
    }

    public init(data: Data, included: [IncludedItem]? = nil) {
        self.data = data
        self.included = included
    }
}
