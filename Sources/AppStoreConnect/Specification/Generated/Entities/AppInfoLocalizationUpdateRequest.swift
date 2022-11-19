// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation

public struct AppInfoLocalizationUpdateRequest: Codable, Hashable {
    public var data: Data

    public struct Data: Codable, Hashable, Identifiable {
        public var type: `Type`
        public var id: String
        public var attributes: Attributes?

        public enum `Type`: String, Codable, CaseIterable {
            case appInfoLocalizations
        }

        public struct Attributes: Codable, Hashable {
            public var name: String?
            public var subtitle: String?
            public var privacyPolicyURL: String?
            public var privacyChoicesURL: String?
            public var privacyPolicyText: String?

            public init(name: String? = nil, subtitle: String? = nil, privacyPolicyURL: String? = nil, privacyChoicesURL: String? = nil, privacyPolicyText: String? = nil) {
                self.name = name
                self.subtitle = subtitle
                self.privacyPolicyURL = privacyPolicyURL
                self.privacyChoicesURL = privacyChoicesURL
                self.privacyPolicyText = privacyPolicyText
            }

            private enum CodingKeys: String, CodingKey {
                case name
                case subtitle
                case privacyPolicyURL = "privacyPolicyUrl"
                case privacyChoicesURL = "privacyChoicesUrl"
                case privacyPolicyText
            }
        }

        public init(type: `Type`, id: String, attributes: Attributes? = nil) {
            self.type = type
            self.id = id
            self.attributes = attributes
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
