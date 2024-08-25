// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.GameCenterDetails.WithID.Metrics {
    public var ruleBasedMatchmakingRequests: RuleBasedMatchmakingRequests {
        RuleBasedMatchmakingRequests(path: path + "/ruleBasedMatchmakingRequests")
    }

    public struct RuleBasedMatchmakingRequests {
        /// Path: `/v1/gameCenterDetails/{id}/metrics/ruleBasedMatchmakingRequests`
        public let path: String

        public func get(limit: Int? = nil, granularity: Granularity, groupBy: [GroupBy]? = nil, filterResult: FilterResult? = nil, sort: [Sort]? = nil) -> Request<AppStoreAPI.GameCenterMatchmakingAppRequestsV1MetricResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(limit, granularity, groupBy, filterResult, sort), id: "gameCenterDetails-ruleBasedMatchmakingRequests-get_metrics")
        }

        private func makeGetQuery(_ limit: Int?, _ granularity: Granularity, _ groupBy: [GroupBy]?, _ filterResult: FilterResult?, _ sort: [Sort]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(limit, forKey: "limit")
            encoder.encode(granularity, forKey: "granularity")
            encoder.encode(groupBy, forKey: "groupBy")
            encoder.encode(filterResult, forKey: "filter[result]")
            encoder.encode(sort, forKey: "sort")
            return encoder.items
        }

        public enum Granularity: String, CaseIterable, Codable, Sendable {
            case p1d = "P1D"
            case pt1h = "PT1H"
            case pt15m = "PT15M"
        }

        public enum GroupBy: String, CaseIterable, Codable, Sendable {
            case result
        }

        public enum FilterResult: String, CaseIterable, Codable, Sendable {
            case matched = "MATCHED"
            case canceled = "CANCELED"
            case expired = "EXPIRED"
        }

        public enum Sort: String, CaseIterable, Codable, Sendable {
            case averageSecondsInQueue
            case minusAverageSecondsInQueue = "-averageSecondsInQueue"
            case count
            case minusCount = "-count"
            case p50SecondsInQueue
            case minusP50SecondsInQueue = "-p50SecondsInQueue"
            case p95SecondsInQueue
            case minusP95SecondsInQueue = "-p95SecondsInQueue"
        }
    }
}
