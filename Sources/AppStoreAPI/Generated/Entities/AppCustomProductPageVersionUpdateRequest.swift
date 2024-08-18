// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AppCustomProductPageVersionUpdateRequest: Codable, Equatable, Sendable {
    public var data: Data

    public struct Data: Codable, Equatable, Identifiable, Sendable {
        public var type: `Type`
        public var id: String
        public var attributes: Attributes?

        public enum `Type`: String, CaseIterable, Codable, Sendable {
            case appCustomProductPageVersions
        }

        public struct Attributes: Codable, Equatable, Sendable {
            public var deepLink: URL?

            public init(deepLink: URL? = nil) {
                self.deepLink = deepLink
            }
        }

        public init(type: `Type` = .appCustomProductPageVersions, id: String, attributes: Attributes? = nil) {
            self.type = type
            self.id = id
            self.attributes = attributes
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
