// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct GameCenterMatchmakingRule: Codable, Hashable, Identifiable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var links: ResourceLinks?

    public enum `Type`: String, Codable, CaseIterable {
        case gameCenterMatchmakingRules
    }

    public struct Attributes: Codable, Hashable {
        public var referenceName: String?
        public var description: String?
        public var type: `Type`?
        public var expression: String?
        public var weight: Double?

        public enum `Type`: String, Codable, CaseIterable {
            case compatible = "COMPATIBLE"
            case distance = "DISTANCE"
            case match = "MATCH"
            case team = "TEAM"
        }

        public init(referenceName: String? = nil, description: String? = nil, type: `Type`? = nil, expression: String? = nil, weight: Double? = nil) {
            self.referenceName = referenceName
            self.description = description
            self.type = type
            self.expression = expression
            self.weight = weight
        }
    }

    public init(type: `Type`, id: String, attributes: Attributes? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.links = links
    }
}
