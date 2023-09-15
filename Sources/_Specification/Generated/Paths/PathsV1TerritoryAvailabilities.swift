// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var territoryAvailabilities: TerritoryAvailabilities {
        TerritoryAvailabilities(path: path + "/territoryAvailabilities")
    }

    public struct TerritoryAvailabilities {
        /// Path: `/v1/territoryAvailabilities`
        public let path: String
    }
}
