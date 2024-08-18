// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct GameCenterMatchmakingTestPlayerPropertyInlineCreate: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String?
    public var attributes: Attributes

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case gameCenterMatchmakingTestPlayerProperties
    }

    public struct Attributes: Codable, Equatable, Sendable {
        public var playerID: String
        public var properties: [Property]?

        public init(playerID: String, properties: [Property]? = nil) {
            self.playerID = playerID
            self.properties = properties
        }

        private enum CodingKeys: String, CodingKey {
            case playerID = "playerId"
            case properties
        }
    }

    public init(type: `Type` = .gameCenterMatchmakingTestPlayerProperties, id: String? = nil, attributes: Attributes) {
        self.type = type
        self.id = id
        self.attributes = attributes
    }
}
