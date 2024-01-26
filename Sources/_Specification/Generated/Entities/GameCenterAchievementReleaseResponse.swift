// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct GameCenterAchievementReleaseResponse: Codable, Equatable {
    /// GameCenterAchievementRelease
    public var data: GameCenterAchievementRelease
    public var included: [IncludedItem]?
    public var links: DocumentLinks

    public enum IncludedItem: Codable, Equatable {
        case gameCenterDetail(GameCenterDetail)
        case gameCenterAchievement(GameCenterAchievement)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(GameCenterDetail.self) {
                self = .gameCenterDetail(value)
            } else if let value = try? container.decode(GameCenterAchievement.self) {
                self = .gameCenterAchievement(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (GameCenterDetail, GameCenterAchievement)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .gameCenterDetail(let value): try container.encode(value)
            case .gameCenterAchievement(let value): try container.encode(value)
            }
        }
    }

    public init(data: GameCenterAchievementRelease, included: [IncludedItem]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
