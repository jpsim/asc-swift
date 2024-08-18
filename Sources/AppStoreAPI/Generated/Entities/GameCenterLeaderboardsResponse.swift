// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct GameCenterLeaderboardsResponse: Codable, Equatable, Sendable {
    public var data: [GameCenterLeaderboard]
    public var included: [IncludedItem]?
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public enum IncludedItem: Codable, Equatable, Sendable {
        case gameCenterDetail(GameCenterDetail)
        case gameCenterGroup(GameCenterGroup)
        case gameCenterLeaderboard(GameCenterLeaderboard)
        case gameCenterLeaderboardSet(GameCenterLeaderboardSet)
        case gameCenterLeaderboardLocalization(GameCenterLeaderboardLocalization)
        case gameCenterLeaderboardRelease(GameCenterLeaderboardRelease)

        public init(from decoder: any Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(GameCenterDetail.self) {
                self = .gameCenterDetail(value)
            } else if let value = try? container.decode(GameCenterGroup.self) {
                self = .gameCenterGroup(value)
            } else if let value = try? container.decode(GameCenterLeaderboard.self) {
                self = .gameCenterLeaderboard(value)
            } else if let value = try? container.decode(GameCenterLeaderboardSet.self) {
                self = .gameCenterLeaderboardSet(value)
            } else if let value = try? container.decode(GameCenterLeaderboardLocalization.self) {
                self = .gameCenterLeaderboardLocalization(value)
            } else if let value = try? container.decode(GameCenterLeaderboardRelease.self) {
                self = .gameCenterLeaderboardRelease(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (GameCenterDetail, GameCenterGroup, GameCenterLeaderboard, GameCenterLeaderboardSet, GameCenterLeaderboardLocalization, GameCenterLeaderboardRelease)."
                )
            }
        }

        public func encode(to encoder: any Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .gameCenterDetail(let value): try container.encode(value)
            case .gameCenterGroup(let value): try container.encode(value)
            case .gameCenterLeaderboard(let value): try container.encode(value)
            case .gameCenterLeaderboardSet(let value): try container.encode(value)
            case .gameCenterLeaderboardLocalization(let value): try container.encode(value)
            case .gameCenterLeaderboardRelease(let value): try container.encode(value)
            }
        }
    }

    public init(data: [GameCenterLeaderboard], included: [IncludedItem]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }
}
