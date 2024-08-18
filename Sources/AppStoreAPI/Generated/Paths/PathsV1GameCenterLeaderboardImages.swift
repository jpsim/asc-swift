// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1 {
    public var gameCenterLeaderboardImages: GameCenterLeaderboardImages {
        GameCenterLeaderboardImages(path: path + "/gameCenterLeaderboardImages")
    }

    public struct GameCenterLeaderboardImages {
        /// Path: `/v1/gameCenterLeaderboardImages`
        public let path: String

        public func post(_ body: AppStoreAPI.GameCenterLeaderboardImageCreateRequest) -> Request<AppStoreAPI.GameCenterLeaderboardImageResponse> {
            Request(path: path, method: "POST", body: body, id: "gameCenterLeaderboardImages-create_instance")
        }
    }
}
