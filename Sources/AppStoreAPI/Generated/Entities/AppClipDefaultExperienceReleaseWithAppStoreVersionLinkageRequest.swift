// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AppClipDefaultExperienceReleaseWithAppStoreVersionLinkageRequest: Codable, Equatable, Sendable {
    public var data: Data

    public struct Data: Codable, Equatable, Identifiable, Sendable {
        public var type: `Type`
        public var id: String

        public enum `Type`: String, CaseIterable, Codable, Sendable {
            case appStoreVersions
        }

        public init(type: `Type` = .appStoreVersions, id: String) {
            self.type = type
            self.id = id
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
