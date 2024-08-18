// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.Apps.WithID {
    public var perfPowerMetrics: PerfPowerMetrics {
        PerfPowerMetrics(path: path + "/perfPowerMetrics")
    }

    public struct PerfPowerMetrics {
        /// Path: `/v1/apps/{id}/perfPowerMetrics`
        public let path: String

        public func get(filterDeviceType: [String]? = nil, filterMetricType: [FilterMetricType]? = nil, filterPlatform: [FilterPlatform]? = nil) -> Request<XcodeMetrics> {
            Request(path: path, method: "GET", query: makeGetQuery(filterDeviceType, filterMetricType, filterPlatform), id: "apps-perfPowerMetrics-get_to_many_related")
        }

        private func makeGetQuery(_ filterDeviceType: [String]?, _ filterMetricType: [FilterMetricType]?, _ filterPlatform: [FilterPlatform]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterDeviceType, forKey: "filter[deviceType]")
            encoder.encode(filterMetricType, forKey: "filter[metricType]")
            encoder.encode(filterPlatform, forKey: "filter[platform]")
            return encoder.items
        }

        public enum FilterMetricType: String, CaseIterable, Codable, Sendable {
            case disk = "DISK"
            case hang = "HANG"
            case battery = "BATTERY"
            case launch = "LAUNCH"
            case memory = "MEMORY"
            case animation = "ANIMATION"
            case termination = "TERMINATION"
        }

        public enum FilterPlatform: String, CaseIterable, Codable, Sendable {
            case ios = "IOS"
        }
    }
}
