// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppScreenshotSetAppScreenshotsLinkagesRequest: Codable, Equatable {
    public var data: [Datum]

    public struct Datum: Codable, Equatable, Identifiable {
        public var type: `Type`
        public var id: String

        public enum `Type`: String, Codable, CaseIterable {
            case appScreenshots
        }

        public init(type: `Type` = .appScreenshots, id: String) {
            self.type = type
            self.id = id
        }
    }

    public init(data: [Datum]) {
        self.data = data
    }
}
