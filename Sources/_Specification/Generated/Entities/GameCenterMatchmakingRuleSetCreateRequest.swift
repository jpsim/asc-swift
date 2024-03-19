// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct GameCenterMatchmakingRuleSetCreateRequest: Codable, Equatable {
    public var data: Data

    public struct Data: Codable, Equatable {
        public var type: `Type`
        public var attributes: Attributes

        public enum `Type`: String, Codable, CaseIterable {
            case gameCenterMatchmakingRuleSets
        }

        public struct Attributes: Codable, Equatable {
            public var referenceName: String
            public var ruleLanguageVersion: Int
            public var minPlayers: Int
            public var maxPlayers: Int

            public init(referenceName: String, ruleLanguageVersion: Int, minPlayers: Int, maxPlayers: Int) {
                self.referenceName = referenceName
                self.ruleLanguageVersion = ruleLanguageVersion
                self.minPlayers = minPlayers
                self.maxPlayers = maxPlayers
            }
        }

        public init(type: `Type` = .gameCenterMatchmakingRuleSets, attributes: Attributes) {
            self.type = type
            self.attributes = attributes
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
