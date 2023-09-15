// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.GameCenterAchievementLocalizations.WithID.Relationships {
    public var gameCenterAchievement: GameCenterAchievement {
        GameCenterAchievement(path: path + "/gameCenterAchievement")
    }

    public struct GameCenterAchievement {
        /// Path: `/v1/gameCenterAchievementLocalizations/{id}/relationships/gameCenterAchievement`
        public let path: String
    }
}
