// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AppClipDefaultExperienceLocalizationCreateRequest: Codable, Equatable, Sendable {
    public var data: Data

    public struct Data: Codable, Equatable, Sendable {
        public var type: `Type`
        public var attributes: Attributes
        public var relationships: Relationships

        public enum `Type`: String, CaseIterable, Codable, Sendable {
            case appClipDefaultExperienceLocalizations
        }

        public struct Attributes: Codable, Equatable, Sendable {
            public var locale: String
            public var subtitle: String?

            public init(locale: String, subtitle: String? = nil) {
                self.locale = locale
                self.subtitle = subtitle
            }
        }

        public struct Relationships: Codable, Equatable, Sendable {
            public var appClipDefaultExperience: AppClipDefaultExperience

            public struct AppClipDefaultExperience: Codable, Equatable, Sendable {
                public var data: Data

                public struct Data: Codable, Equatable, Identifiable, Sendable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, CaseIterable, Codable, Sendable {
                        case appClipDefaultExperiences
                    }

                    public init(type: `Type` = .appClipDefaultExperiences, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data) {
                    self.data = data
                }
            }

            public init(appClipDefaultExperience: AppClipDefaultExperience) {
                self.appClipDefaultExperience = appClipDefaultExperience
            }
        }

        public init(type: `Type` = .appClipDefaultExperienceLocalizations, attributes: Attributes, relationships: Relationships) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
