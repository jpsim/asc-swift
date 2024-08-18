// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct GameCenterDetailsResponse: Codable, Equatable, Sendable {
    public var data: [GameCenterDetail]
    public var included: [IncludedItem]?
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public enum IncludedItem: Codable, Equatable, Sendable {
        case app(App)
        case gameCenterAppVersion(GameCenterAppVersion)
        case gameCenterGroup(GameCenterGroup)
        case gameCenterLeaderboard(GameCenterLeaderboard)
        case gameCenterLeaderboardSet(GameCenterLeaderboardSet)
        case gameCenterAchievement(GameCenterAchievement)
        case gameCenterAchievementRelease(GameCenterAchievementRelease)
        case gameCenterLeaderboardRelease(GameCenterLeaderboardRelease)
        case gameCenterLeaderboardSetRelease(GameCenterLeaderboardSetRelease)

        public init(from decoder: any Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(App.self) {
                self = .app(value)
            } else if let value = try? container.decode(GameCenterAppVersion.self) {
                self = .gameCenterAppVersion(value)
            } else if let value = try? container.decode(GameCenterGroup.self) {
                self = .gameCenterGroup(value)
            } else if let value = try? container.decode(GameCenterLeaderboard.self) {
                self = .gameCenterLeaderboard(value)
            } else if let value = try? container.decode(GameCenterLeaderboardSet.self) {
                self = .gameCenterLeaderboardSet(value)
            } else if let value = try? container.decode(GameCenterAchievement.self) {
                self = .gameCenterAchievement(value)
            } else if let value = try? container.decode(GameCenterAchievementRelease.self) {
                self = .gameCenterAchievementRelease(value)
            } else if let value = try? container.decode(GameCenterLeaderboardRelease.self) {
                self = .gameCenterLeaderboardRelease(value)
            } else if let value = try? container.decode(GameCenterLeaderboardSetRelease.self) {
                self = .gameCenterLeaderboardSetRelease(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (App, GameCenterAppVersion, GameCenterGroup, GameCenterLeaderboard, GameCenterLeaderboardSet, GameCenterAchievement, GameCenterAchievementRelease, GameCenterLeaderboardRelease, GameCenterLeaderboardSetRelease)."
                )
            }
        }

        public func encode(to encoder: any Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .app(let value): try container.encode(value)
            case .gameCenterAppVersion(let value): try container.encode(value)
            case .gameCenterGroup(let value): try container.encode(value)
            case .gameCenterLeaderboard(let value): try container.encode(value)
            case .gameCenterLeaderboardSet(let value): try container.encode(value)
            case .gameCenterAchievement(let value): try container.encode(value)
            case .gameCenterAchievementRelease(let value): try container.encode(value)
            case .gameCenterLeaderboardRelease(let value): try container.encode(value)
            case .gameCenterLeaderboardSetRelease(let value): try container.encode(value)
            }
        }
    }

    public init(data: [GameCenterDetail], included: [IncludedItem]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }
}
