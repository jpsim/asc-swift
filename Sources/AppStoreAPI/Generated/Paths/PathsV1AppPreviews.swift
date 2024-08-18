// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1 {
    public var appPreviews: AppPreviews {
        AppPreviews(path: path + "/appPreviews")
    }

    public struct AppPreviews {
        /// Path: `/v1/appPreviews`
        public let path: String

        public func post(_ body: AppStoreAPI.AppPreviewCreateRequest) -> Request<AppStoreAPI.AppPreviewResponse> {
            Request(path: path, method: "POST", body: body, id: "appPreviews-create_instance")
        }
    }
}
