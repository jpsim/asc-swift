// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppClipAdvancedExperienceLocalization: Codable, Hashable, Identifiable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?

    public enum `Type`: String, Codable, CaseIterable {
        case appClipAdvancedExperienceLocalizations
    }

    public struct Attributes: Codable, Hashable {
        public var language: AppClipAdvancedExperienceLanguage?
        public var title: String?
        public var subtitle: String?

        public init(language: AppClipAdvancedExperienceLanguage? = nil, title: String? = nil, subtitle: String? = nil) {
            self.language = language
            self.title = title
            self.subtitle = subtitle
        }
    }

    public init(type: `Type`, id: String, attributes: Attributes? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
    }
}
