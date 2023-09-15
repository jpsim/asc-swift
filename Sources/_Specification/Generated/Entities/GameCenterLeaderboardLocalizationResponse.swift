// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct GameCenterLeaderboardLocalizationResponse: Codable, Hashable {
    /// GameCenterLeaderboardLocalization
    public var data: GameCenterLeaderboardLocalization
    public var included: [IncludedItem]?
    public var links: DocumentLinks

    public enum IncludedItem: Codable, Hashable {
        case gameCenterLeaderboard(GameCenterLeaderboard)
        case gameCenterLeaderboardImage(GameCenterLeaderboardImage)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(GameCenterLeaderboard.self) {
                self = .gameCenterLeaderboard(value)
            } else if let value = try? container.decode(GameCenterLeaderboardImage.self) {
                self = .gameCenterLeaderboardImage(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (GameCenterLeaderboard, GameCenterLeaderboardImage)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .gameCenterLeaderboard(let value): try container.encode(value)
            case .gameCenterLeaderboardImage(let value): try container.encode(value)
            }
        }
    }

    public init(data: GameCenterLeaderboardLocalization, included: [IncludedItem]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
