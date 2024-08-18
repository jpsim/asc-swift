// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AppEventLocalizationUpdateRequest: Codable, Equatable, Sendable {
    public var data: Data

    public struct Data: Codable, Equatable, Identifiable, Sendable {
        public var type: `Type`
        public var id: String
        public var attributes: Attributes?

        public enum `Type`: String, CaseIterable, Codable, Sendable {
            case appEventLocalizations
        }

        public struct Attributes: Codable, Equatable, Sendable {
            public var name: String?
            public var shortDescription: String?
            public var longDescription: String?

            public init(name: String? = nil, shortDescription: String? = nil, longDescription: String? = nil) {
                self.name = name
                self.shortDescription = shortDescription
                self.longDescription = longDescription
            }
        }

        public init(type: `Type` = .appEventLocalizations, id: String, attributes: Attributes? = nil) {
            self.type = type
            self.id = id
            self.attributes = attributes
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
