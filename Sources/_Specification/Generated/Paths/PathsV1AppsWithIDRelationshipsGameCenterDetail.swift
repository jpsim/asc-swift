// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.Apps.WithID.Relationships {
    public var gameCenterDetail: GameCenterDetail {
        GameCenterDetail(path: path + "/gameCenterDetail")
    }

    public struct GameCenterDetail {
        /// Path: `/v1/apps/{id}/relationships/gameCenterDetail`
        public let path: String
    }
}
