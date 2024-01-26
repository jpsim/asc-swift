// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppCustomProductPageLocalizationInlineCreate: Codable, Equatable, Identifiable {
    public var type: `Type`
    public var id: String?
    public var attributes: Attributes
    public var relationships: Relationships?

    public enum `Type`: String, Codable, CaseIterable {
        case appCustomProductPageLocalizations
    }

    public struct Attributes: Codable, Equatable {
        public var locale: String
        public var promotionalText: String?

        public init(locale: String, promotionalText: String? = nil) {
            self.locale = locale
            self.promotionalText = promotionalText
        }
    }

    public struct Relationships: Codable, Equatable {
        public var appCustomProductPageVersion: AppCustomProductPageVersion?

        public struct AppCustomProductPageVersion: Codable, Equatable {
            public var data: Data?

            public struct Data: Codable, Equatable, Identifiable {
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

            public init(data: Data? = nil) {
                self.data = data
            }
        }

        public init(appCustomProductPageVersion: AppCustomProductPageVersion? = nil) {
            self.appCustomProductPageVersion = appCustomProductPageVersion
        }
    }

    public init(type: `Type`, id: String? = nil, attributes: Attributes, relationships: Relationships? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
    }
}
