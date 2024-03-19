// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AnalyticsReportRequests {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/analyticsReportRequests/{id}`
        public let path: String

        public func get(fieldsAnalyticsReportRequests: [FieldsAnalyticsReportRequests]? = nil, include: [Include]? = nil, fieldsAnalyticsReports: [FieldsAnalyticsReports]? = nil, limitReports: Int? = nil) -> Request<_Specification.AnalyticsReportRequestResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsAnalyticsReportRequests, include, fieldsAnalyticsReports, limitReports), id: "analyticsReportRequests-get_instance")
        }

        private func makeGetQuery(_ fieldsAnalyticsReportRequests: [FieldsAnalyticsReportRequests]?, _ include: [Include]?, _ fieldsAnalyticsReports: [FieldsAnalyticsReports]?, _ limitReports: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsAnalyticsReportRequests, forKey: "fields[analyticsReportRequests]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsAnalyticsReports, forKey: "fields[analyticsReports]")
            encoder.encode(limitReports, forKey: "limit[reports]")
            return encoder.items
        }

        public enum FieldsAnalyticsReportRequests: String, CaseIterable, Codable, Sendable {
            case accessType
            case app
            case reports
            case stoppedDueToInactivity
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case reports
        }

        public enum FieldsAnalyticsReports: String, CaseIterable, Codable, Sendable {
            case category
            case instances
            case name
        }

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "analyticsReportRequests-delete_instance")
        }
    }
}
