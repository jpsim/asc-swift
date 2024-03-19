// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct GameCenterAchievementUpdateRequest: Codable, Equatable, Sendable {
    public var data: Data

    public struct Data: Codable, Equatable, Identifiable, Sendable {
        public var type: `Type`
        public var id: String
        public var attributes: Attributes?

        public enum `Type`: String, CaseIterable, Codable, Sendable {
            case gameCenterAchievements
        }

        public struct Attributes: Codable, Equatable, Sendable {
            public var referenceName: String?
            public var points: Int?
            public var isShowBeforeEarned: Bool?
            public var isRepeatable: Bool?
            public var isArchived: Bool?

            public init(referenceName: String? = nil, points: Int? = nil, isShowBeforeEarned: Bool? = nil, isRepeatable: Bool? = nil, isArchived: Bool? = nil) {
                self.referenceName = referenceName
                self.points = points
                self.isShowBeforeEarned = isShowBeforeEarned
                self.isRepeatable = isRepeatable
                self.isArchived = isArchived
            }

            private enum CodingKeys: String, CodingKey {
                case referenceName
                case points
                case isShowBeforeEarned = "showBeforeEarned"
                case isRepeatable = "repeatable"
                case isArchived = "archived"
            }
        }

        public init(type: `Type` = .gameCenterAchievements, id: String, attributes: Attributes? = nil) {
            self.type = type
            self.id = id
            self.attributes = attributes
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
