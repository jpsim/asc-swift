// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct GameCenterMatchmakingTeamResponse: Codable, Hashable {
    /// GameCenterMatchmakingTeam
    public var data: GameCenterMatchmakingTeam
    public var links: DocumentLinks

    public init(data: GameCenterMatchmakingTeam, links: DocumentLinks) {
        self.data = data
        self.links = links
    }
}
