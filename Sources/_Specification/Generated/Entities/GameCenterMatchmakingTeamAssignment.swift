// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct GameCenterMatchmakingTeamAssignment: Codable, Equatable {
    public var playerID: String?
    public var team: String?

    public init(playerID: String? = nil, team: String? = nil) {
        self.playerID = playerID
        self.team = team
    }

    private enum CodingKeys: String, CodingKey {
        case playerID = "playerId"
        case team
    }
}
