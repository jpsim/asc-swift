// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct GameCenterLeaderboardSetLocalizationsResponse: Codable, Equatable, Sendable {
    public var data: [GameCenterLeaderboardSetLocalization]
    public var included: [IncludedItem]?
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public enum IncludedItem: Codable, Equatable, Sendable {
        case gameCenterLeaderboardSet(GameCenterLeaderboardSet)
        case gameCenterLeaderboardSetImage(GameCenterLeaderboardSetImage)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(GameCenterLeaderboardSet.self) {
                self = .gameCenterLeaderboardSet(value)
            } else if let value = try? container.decode(GameCenterLeaderboardSetImage.self) {
                self = .gameCenterLeaderboardSetImage(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (GameCenterLeaderboardSet, GameCenterLeaderboardSetImage)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .gameCenterLeaderboardSet(let value): try container.encode(value)
            case .gameCenterLeaderboardSetImage(let value): try container.encode(value)
            }
        }
    }

    public init(data: [GameCenterLeaderboardSetLocalization], included: [IncludedItem]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }
}
