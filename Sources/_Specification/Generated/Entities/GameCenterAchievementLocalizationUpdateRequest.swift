// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct GameCenterAchievementLocalizationUpdateRequest: Codable, Hashable {
    public var data: Data

    public struct Data: Codable, Hashable, Identifiable {
        public var type: `Type`
        public var id: String
        public var attributes: Attributes?

        public enum `Type`: String, Codable, CaseIterable {
            case gameCenterAchievementLocalizations
        }

        public struct Attributes: Codable, Hashable {
            public var name: String?
            public var beforeEarnedDescription: String?
            public var afterEarnedDescription: String?

            public init(name: String? = nil, beforeEarnedDescription: String? = nil, afterEarnedDescription: String? = nil) {
                self.name = name
                self.beforeEarnedDescription = beforeEarnedDescription
                self.afterEarnedDescription = afterEarnedDescription
            }
        }

        public init(type: `Type`, id: String, attributes: Attributes? = nil) {
            self.type = type
            self.id = id
            self.attributes = attributes
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
