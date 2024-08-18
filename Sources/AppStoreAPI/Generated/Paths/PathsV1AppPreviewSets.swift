// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1 {
    public var appPreviewSets: AppPreviewSets {
        AppPreviewSets(path: path + "/appPreviewSets")
    }

    public struct AppPreviewSets {
        /// Path: `/v1/appPreviewSets`
        public let path: String

        public func post(_ body: AppStoreAPI.AppPreviewSetCreateRequest) -> Request<AppStoreAPI.AppPreviewSetResponse> {
            Request(path: path, method: "POST", body: body, id: "appPreviewSets-create_instance")
        }
    }
}
