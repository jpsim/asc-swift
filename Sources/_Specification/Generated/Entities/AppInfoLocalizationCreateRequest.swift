// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppInfoLocalizationCreateRequest: Codable, Equatable, Sendable {
    public var data: Data

    public struct Data: Codable, Equatable, Sendable {
        public var type: `Type`
        public var attributes: Attributes
        public var relationships: Relationships

        public enum `Type`: String, CaseIterable, Codable, Sendable {
            case appInfoLocalizations
        }

        public struct Attributes: Codable, Equatable, Sendable {
            public var locale: String
            public var name: String?
            public var subtitle: String?
            public var privacyPolicyURL: String?
            public var privacyChoicesURL: String?
            public var privacyPolicyText: String?

            public init(locale: String, name: String? = nil, subtitle: String? = nil, privacyPolicyURL: String? = nil, privacyChoicesURL: String? = nil, privacyPolicyText: String? = nil) {
                self.locale = locale
                self.name = name
                self.subtitle = subtitle
                self.privacyPolicyURL = privacyPolicyURL
                self.privacyChoicesURL = privacyChoicesURL
                self.privacyPolicyText = privacyPolicyText
            }

            private enum CodingKeys: String, CodingKey {
                case locale
                case name
                case subtitle
                case privacyPolicyURL = "privacyPolicyUrl"
                case privacyChoicesURL = "privacyChoicesUrl"
                case privacyPolicyText
            }
        }

        public struct Relationships: Codable, Equatable, Sendable {
            public var appInfo: AppInfo

            public struct AppInfo: Codable, Equatable, Sendable {
                public var data: Data

                public struct Data: Codable, Equatable, Identifiable, Sendable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, CaseIterable, Codable, Sendable {
                        case appInfos
                    }

                    public init(type: `Type` = .appInfos, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data) {
                    self.data = data
                }
            }

            public init(appInfo: AppInfo) {
                self.appInfo = appInfo
            }
        }

        public init(type: `Type` = .appInfoLocalizations, attributes: Attributes, relationships: Relationships) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
