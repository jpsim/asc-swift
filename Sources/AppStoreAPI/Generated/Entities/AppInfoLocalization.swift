// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AppInfoLocalization: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks?

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case appInfoLocalizations
    }

    public struct Attributes: Codable, Equatable, Sendable {
        public var locale: String?
        public var name: String?
        public var subtitle: String?
        public var privacyPolicyURL: String?
        public var privacyChoicesURL: String?
        public var privacyPolicyText: String?

        public init(locale: String? = nil, name: String? = nil, subtitle: String? = nil, privacyPolicyURL: String? = nil, privacyChoicesURL: String? = nil, privacyPolicyText: String? = nil) {
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
        public var appInfo: AppInfo?

        public struct AppInfo: Codable, Equatable, Sendable {
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
                    case appInfos
                }

                public init(type: `Type` = .appInfos, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public init(appInfo: AppInfo? = nil) {
            self.appInfo = appInfo
        }
    }

    public init(type: `Type` = .appInfoLocalizations, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
