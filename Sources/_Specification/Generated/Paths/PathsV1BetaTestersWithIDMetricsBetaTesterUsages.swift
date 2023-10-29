// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.BetaTesters.WithID.Metrics {
    public var betaTesterUsages: BetaTesterUsages {
        BetaTesterUsages(path: path + "/betaTesterUsages")
    }

    public struct BetaTesterUsages {
        /// Path: `/v1/betaTesters/{id}/metrics/betaTesterUsages`
        public let path: String

        public func get(limit: Int? = nil, filterApps: String? = nil, period: String? = nil) -> Request<_Specification.BetaTesterUsagesV1MetricResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(limit, filterApps, period), id: "betaTesters-betaTesterUsages-get_metrics")
        }

        private func makeGetQuery(_ limit: Int?, _ filterApps: String?, _ period: String?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(limit, forKey: "limit")
            encoder.encode(filterApps, forKey: "filter[apps]")
            encoder.encode(period, forKey: "period")
            return encoder.items
        }
    }
}
