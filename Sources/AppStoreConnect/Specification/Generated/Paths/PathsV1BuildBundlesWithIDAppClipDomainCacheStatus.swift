// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.BuildBundles.WithID {
    public var appClipDomainCacheStatus: AppClipDomainCacheStatus {
        AppClipDomainCacheStatus(path: path + "/appClipDomainCacheStatus")
    }

    public struct AppClipDomainCacheStatus {
        /// Path: `/v1/buildBundles/{id}/appClipDomainCacheStatus`
        public let path: String

        public func get(fieldsAppClipDomainStatuses: [FieldsAppClipDomainStatuses]? = nil) -> Request<AppStoreConnect.AppClipDomainStatusResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(fieldsAppClipDomainStatuses), id: "buildBundles-appClipDomainCacheStatus-get_to_one_related")
        }

        private func makeGetQuery(_ fieldsAppClipDomainStatuses: [FieldsAppClipDomainStatuses]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsAppClipDomainStatuses, forKey: "fields[appClipDomainStatuses]", explode: false)
            return encoder.items
        }

        public enum FieldsAppClipDomainStatuses: String, Codable, CaseIterable {
            case domains
            case lastUpdatedDate
        }
    }
}
