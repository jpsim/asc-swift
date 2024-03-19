// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppStoreVersions.WithID {
    public var appStoreVersionPhasedRelease: AppStoreVersionPhasedRelease {
        AppStoreVersionPhasedRelease(path: path + "/appStoreVersionPhasedRelease")
    }

    public struct AppStoreVersionPhasedRelease {
        /// Path: `/v1/appStoreVersions/{id}/appStoreVersionPhasedRelease`
        public let path: String

        public func get(fieldsAppStoreVersionPhasedReleases: [FieldsAppStoreVersionPhasedReleases]? = nil) -> Request<_Specification.AppStoreVersionPhasedReleaseResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsAppStoreVersionPhasedReleases), id: "appStoreVersions-appStoreVersionPhasedRelease-get_to_one_related")
        }

        private func makeGetQuery(_ fieldsAppStoreVersionPhasedReleases: [FieldsAppStoreVersionPhasedReleases]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsAppStoreVersionPhasedReleases, forKey: "fields[appStoreVersionPhasedReleases]", explode: false)
            return encoder.items
        }

        public enum FieldsAppStoreVersionPhasedReleases: String, CaseIterable, Codable, Sendable {
            case appStoreVersion
            case currentDayNumber
            case phasedReleaseState
            case startDate
            case totalPauseDuration
        }
    }
}
