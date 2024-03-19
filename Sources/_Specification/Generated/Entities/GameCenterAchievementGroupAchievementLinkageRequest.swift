// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct GameCenterAchievementGroupAchievementLinkageRequest: Codable, Equatable {
    public var data: Data

    public struct Data: Codable, Equatable, Identifiable {
        public var type: `Type`
        public var id: String

        public enum `Type`: String, Codable, CaseIterable {
            case gameCenterAchievements
        }

        public init(type: `Type` = .gameCenterAchievements, id: String) {
            self.type = type
            self.id = id
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
