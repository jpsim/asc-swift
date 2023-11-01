// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppStoreVersionExperiments {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/appStoreVersionExperiments/{id}`
        public let path: String

        public func get(fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments]? = nil, include: [Include]? = nil, fieldsAppStoreVersionExperimentTreatments: [FieldsAppStoreVersionExperimentTreatments]? = nil, limitAppStoreVersionExperimentTreatments: Int? = nil) -> Request<_Specification.AppStoreVersionExperimentResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsAppStoreVersionExperiments, include, fieldsAppStoreVersionExperimentTreatments, limitAppStoreVersionExperimentTreatments), id: "appStoreVersionExperiments-get_instance")
        }

        private func makeGetQuery(_ fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments]?, _ include: [Include]?, _ fieldsAppStoreVersionExperimentTreatments: [FieldsAppStoreVersionExperimentTreatments]?, _ limitAppStoreVersionExperimentTreatments: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsAppStoreVersionExperiments, forKey: "fields[appStoreVersionExperiments]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsAppStoreVersionExperimentTreatments, forKey: "fields[appStoreVersionExperimentTreatments]")
            encoder.encode(limitAppStoreVersionExperimentTreatments, forKey: "limit[appStoreVersionExperimentTreatments]")
            return encoder.items
        }

        public enum FieldsAppStoreVersionExperiments: String, Codable, CaseIterable {
            case appStoreVersion
            case appStoreVersionExperimentTreatments
            case endDate
            case name
            case reviewRequired
            case startDate
            case started
            case state
            case trafficProportion
        }

        public enum Include: String, Codable, CaseIterable {
            case appStoreVersion
            case appStoreVersionExperimentTreatments
        }

        public enum FieldsAppStoreVersionExperimentTreatments: String, Codable, CaseIterable {
            case appIcon
            case appIconName
            case appStoreVersionExperiment
            case appStoreVersionExperimentTreatmentLocalizations
            case appStoreVersionExperimentV2
            case name
            case promotedDate
        }

        public func patch(_ body: _Specification.AppStoreVersionExperimentUpdateRequest) -> Request<_Specification.AppStoreVersionExperimentResponse> {
            Request(path: path, method: "PATCH", body: body, id: "appStoreVersionExperiments-update_instance")
        }

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "appStoreVersionExperiments-delete_instance")
        }
    }
}
