// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var appEventLocalizations: AppEventLocalizations {
        AppEventLocalizations(path: path + "/appEventLocalizations")
    }

    public struct AppEventLocalizations {
        /// Path: `/v1/appEventLocalizations`
        public let path: String

        public func post(_ body: AppStoreConnect.AppEventLocalizationCreateRequest) -> Request<AppStoreConnect.AppEventLocalizationResponse> {
            Request(method: "POST", url: path, body: body, id: "appEventLocalizations-create_instance")
        }
    }
}
