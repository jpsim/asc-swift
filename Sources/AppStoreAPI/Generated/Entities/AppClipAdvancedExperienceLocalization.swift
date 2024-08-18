// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AppClipAdvancedExperienceLocalization: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var links: ResourceLinks?

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case appClipAdvancedExperienceLocalizations
    }

    public struct Attributes: Codable, Equatable, Sendable {
        public var language: AppClipAdvancedExperienceLanguage?
        public var title: String?
        public var subtitle: String?

        public init(language: AppClipAdvancedExperienceLanguage? = nil, title: String? = nil, subtitle: String? = nil) {
            self.language = language
            self.title = title
            self.subtitle = subtitle
        }
    }

    public init(type: `Type` = .appClipAdvancedExperienceLocalizations, id: String, attributes: Attributes? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.links = links
    }
}
