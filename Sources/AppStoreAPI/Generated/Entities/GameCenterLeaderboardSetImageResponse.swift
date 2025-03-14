// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct GameCenterLeaderboardSetImageResponse: Codable, Equatable, Sendable {
    /// GameCenterLeaderboardSetImage
    public var data: GameCenterLeaderboardSetImage
    public var included: [GameCenterLeaderboardSetLocalization]?
    public var links: DocumentLinks

    public init(data: GameCenterLeaderboardSetImage, included: [GameCenterLeaderboardSetLocalization]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
