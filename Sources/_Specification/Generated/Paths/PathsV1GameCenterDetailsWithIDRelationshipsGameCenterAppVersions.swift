// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.GameCenterDetails.WithID.Relationships {
    public var gameCenterAppVersions: GameCenterAppVersions {
        GameCenterAppVersions(path: path + "/gameCenterAppVersions")
    }

    public struct GameCenterAppVersions {
        /// Path: `/v1/gameCenterDetails/{id}/relationships/gameCenterAppVersions`
        public let path: String
    }
}
