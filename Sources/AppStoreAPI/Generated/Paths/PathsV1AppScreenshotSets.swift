// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1 {
    public var appScreenshotSets: AppScreenshotSets {
        AppScreenshotSets(path: path + "/appScreenshotSets")
    }

    public struct AppScreenshotSets {
        /// Path: `/v1/appScreenshotSets`
        public let path: String

        public func post(_ body: AppStoreAPI.AppScreenshotSetCreateRequest) -> Request<AppStoreAPI.AppScreenshotSetResponse> {
            Request(path: path, method: "POST", body: body, id: "appScreenshotSets-create_instance")
        }
    }
}
