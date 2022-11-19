// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.Apps.WithID.Relationships {
    public var appStoreVersions: AppStoreVersions {
        AppStoreVersions(path: path + "/appStoreVersions")
    }

    public struct AppStoreVersions {
        /// Path: `/v1/apps/{id}/relationships/appStoreVersions`
        public let path: String
    }
}
