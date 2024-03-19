// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct GameCenterDetailGameCenterLeaderboardsLinkagesRequest: Codable, Equatable, Sendable {
    public var data: [Datum]

    public struct Datum: Codable, Equatable, Identifiable, Sendable {
        public var type: `Type`
        public var id: String

        public enum `Type`: String, CaseIterable, Codable, Sendable {
            case gameCenterLeaderboards
        }

        public init(type: `Type` = .gameCenterLeaderboards, id: String) {
            self.type = type
            self.id = id
        }
    }

    public init(data: [Datum]) {
        self.data = data
    }
}
