// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppClipDefaultExperienceReleaseWithAppStoreVersionLinkageRequest: Codable, Equatable {
    public var data: Data

    public struct Data: Codable, Equatable, Identifiable {
        public var type: `Type`
        public var id: String

        public enum `Type`: String, Codable, CaseIterable {
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
