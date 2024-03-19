// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct GameCenterGroupCreateRequest: Codable, Equatable, Sendable {
    public var data: Data

    public struct Data: Codable, Equatable, Sendable {
        public var type: `Type`
        public var attributes: Attributes?

        public enum `Type`: String, CaseIterable, Codable, Sendable {
            case gameCenterGroups
        }

        public struct Attributes: Codable, Equatable, Sendable {
            public var referenceName: String?

            public init(referenceName: String? = nil) {
                self.referenceName = referenceName
            }
        }

        public init(type: `Type` = .gameCenterGroups, attributes: Attributes? = nil) {
            self.type = type
            self.attributes = attributes
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
