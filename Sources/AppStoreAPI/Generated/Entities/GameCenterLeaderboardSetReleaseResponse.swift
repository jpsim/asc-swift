// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct GameCenterLeaderboardSetReleaseResponse: Codable, Equatable, Sendable {
    /// GameCenterLeaderboardSetRelease
    public var data: GameCenterLeaderboardSetRelease
    public var included: [IncludedItem]?
    public var links: DocumentLinks

    public enum IncludedItem: Codable, Equatable, Sendable {
        case gameCenterDetail(GameCenterDetail)
        case gameCenterLeaderboardSet(GameCenterLeaderboardSet)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(GameCenterDetail.self) {
                self = .gameCenterDetail(value)
            } else if let value = try? container.decode(GameCenterLeaderboardSet.self) {
                self = .gameCenterLeaderboardSet(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (GameCenterDetail, GameCenterLeaderboardSet)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .gameCenterDetail(let value): try container.encode(value)
            case .gameCenterLeaderboardSet(let value): try container.encode(value)
            }
        }
    }

    public init(data: GameCenterLeaderboardSetRelease, included: [IncludedItem]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
