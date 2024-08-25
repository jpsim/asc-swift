// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.GameCenterMatchmakingQueues.WithID.Metrics {
    public var matchmakingSessions: MatchmakingSessions {
        MatchmakingSessions(path: path + "/matchmakingSessions")
    }

    public struct MatchmakingSessions {
        /// Path: `/v1/gameCenterMatchmakingQueues/{id}/metrics/matchmakingSessions`
        public let path: String

        public func get(limit: Int? = nil, granularity: Granularity, sort: [Sort]? = nil) -> Request<AppStoreAPI.GameCenterMatchmakingSessionsV1MetricResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(limit, granularity, sort), id: "gameCenterMatchmakingQueues-matchmakingSessions-get_metrics")
        }

        private func makeGetQuery(_ limit: Int?, _ granularity: Granularity, _ sort: [Sort]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(limit, forKey: "limit")
            encoder.encode(granularity, forKey: "granularity")
            encoder.encode(sort, forKey: "sort")
            return encoder.items
        }

        public enum Granularity: String, CaseIterable, Codable, Sendable {
            case p1d = "P1D"
            case pt1h = "PT1H"
            case pt15m = "PT15M"
        }

        public enum Sort: String, CaseIterable, Codable, Sendable {
            case averagePlayerCount
            case minusAveragePlayerCount = "-averagePlayerCount"
            case count
            case minusCount = "-count"
            case p50PlayerCount
            case minusP50PlayerCount = "-p50PlayerCount"
            case p95PlayerCount
            case minusP95PlayerCount = "-p95PlayerCount"
        }
    }
}
