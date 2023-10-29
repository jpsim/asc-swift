// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.GameCenterDetails.WithID.Metrics {
    public var classicMatchmakingRequests: ClassicMatchmakingRequests {
        ClassicMatchmakingRequests(path: path + "/classicMatchmakingRequests")
    }

    public struct ClassicMatchmakingRequests {
        /// Path: `/v1/gameCenterDetails/{id}/metrics/classicMatchmakingRequests`
        public let path: String

        public func get(limit: Int? = nil, granularity: [Granularity], groupBy: [GroupBy]? = nil, filterResult: FilterResult? = nil, sort: [Sort]? = nil) -> Request<_Specification.GameCenterMatchmakingAppRequestsV1MetricResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(limit, granularity, groupBy, filterResult, sort), id: "gameCenterDetails-classicMatchmakingRequests-get_metrics")
        }

        private func makeGetQuery(_ limit: Int?, _ granularity: [Granularity], _ groupBy: [GroupBy]?, _ filterResult: FilterResult?, _ sort: [Sort]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(limit, forKey: "limit")
            encoder.encode(granularity, forKey: "granularity")
            encoder.encode(groupBy, forKey: "groupBy")
            encoder.encode(filterResult, forKey: "filter[result]")
            encoder.encode(sort, forKey: "sort")
            return encoder.items
        }

        public enum Granularity: String, Codable, CaseIterable {
            case p1d = "P1D"
            case pt1h = "PT1H"
            case pt15m = "PT15M"
        }

        public enum GroupBy: String, Codable, CaseIterable {
            case result
        }

        public enum FilterResult: String, Codable, CaseIterable {
            case matched = "MATCHED"
            case canceled = "CANCELED"
            case expired = "EXPIRED"
        }

        public enum Sort: String, Codable, CaseIterable {
            case averageSecondsInQueue
            case minusaverageSecondsInQueue = "-averageSecondsInQueue"
            case count
            case minuscount = "-count"
            case p50SecondsInQueue
            case minusp50SecondsInQueue = "-p50SecondsInQueue"
            case p95SecondsInQueue
            case minusp95SecondsInQueue = "-p95SecondsInQueue"
        }
    }
}
