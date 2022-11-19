// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var appPreviewSets: AppPreviewSets {
        AppPreviewSets(path: path + "/appPreviewSets")
    }

    public struct AppPreviewSets {
        /// Path: `/v1/appPreviewSets`
        public let path: String

        public func post(_ body: AppStoreConnect.AppPreviewSetCreateRequest) -> Request<AppStoreConnect.AppPreviewSetResponse> {
            Request(method: "POST", url: path, body: body, id: "appPreviewSets-create_instance")
        }
    }
}
