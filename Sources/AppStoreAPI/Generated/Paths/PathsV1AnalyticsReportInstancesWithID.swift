// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.AnalyticsReportInstances {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/analyticsReportInstances/{id}`
        public let path: String

        public func get(fieldsAnalyticsReportInstances: [FieldsAnalyticsReportInstances]? = nil, fieldsAnalyticsReportSegments: [FieldsAnalyticsReportSegments]? = nil) -> Request<AppStoreAPI.AnalyticsReportInstanceResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsAnalyticsReportInstances, fieldsAnalyticsReportSegments), id: "analyticsReportInstances-get_instance")
        }

        private func makeGetQuery(_ fieldsAnalyticsReportInstances: [FieldsAnalyticsReportInstances]?, _ fieldsAnalyticsReportSegments: [FieldsAnalyticsReportSegments]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsAnalyticsReportInstances, forKey: "fields[analyticsReportInstances]")
            encoder.encode(fieldsAnalyticsReportSegments, forKey: "fields[analyticsReportSegments]")
            return encoder.items
        }

        public enum FieldsAnalyticsReportInstances: String, CaseIterable, Codable, Sendable {
            case granularity
            case processingDate
            case segments
        }

        public enum FieldsAnalyticsReportSegments: String, CaseIterable, Codable, Sendable {
            case checksum
            case sizeInBytes
            case url
        }
    }
}
