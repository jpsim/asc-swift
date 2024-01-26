// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.GameCenterMatchmakingRules.WithID.Metrics {
    public var matchmakingNumberRuleResults: MatchmakingNumberRuleResults {
        MatchmakingNumberRuleResults(path: path + "/matchmakingNumberRuleResults")
    }

    public struct MatchmakingNumberRuleResults {
        /// Path: `/v1/gameCenterMatchmakingRules/{id}/metrics/matchmakingNumberRuleResults`
        public let path: String

        public func get(limit: Int? = nil, granularity: Granularity, groupBy: [GroupBy]? = nil, filterGameCenterMatchmakingQueue: String? = nil, sort: [Sort]? = nil) -> Request<_Specification.GameCenterMatchmakingNumberRuleResultsV1MetricResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(limit, granularity, groupBy, filterGameCenterMatchmakingQueue, sort), id: "gameCenterMatchmakingRules-matchmakingNumberRuleResults-get_metrics")
        }

        private func makeGetQuery(_ limit: Int?, _ granularity: Granularity, _ groupBy: [GroupBy]?, _ filterGameCenterMatchmakingQueue: String?, _ sort: [Sort]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(limit, forKey: "limit")
            encoder.encode(granularity, forKey: "granularity")
            encoder.encode(groupBy, forKey: "groupBy")
            encoder.encode(filterGameCenterMatchmakingQueue, forKey: "filter[gameCenterMatchmakingQueue]")
            encoder.encode(sort, forKey: "sort")
            return encoder.items
        }

        public enum Granularity: String, Codable, CaseIterable {
            case p1d = "P1D"
            case pt1h = "PT1H"
            case pt15m = "PT15M"
        }

        public enum GroupBy: String, Codable, CaseIterable {
            case gameCenterMatchmakingQueue
        }

        public enum Sort: String, Codable, CaseIterable {
            case averageResult
            case minusaverageResult = "-averageResult"
            case count
            case minuscount = "-count"
            case p50Result
            case minusp50Result = "-p50Result"
            case p95Result
            case minusp95Result = "-p95Result"
        }
    }
}
