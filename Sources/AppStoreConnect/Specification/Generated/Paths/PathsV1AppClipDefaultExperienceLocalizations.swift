// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var appClipDefaultExperienceLocalizations: AppClipDefaultExperienceLocalizations {
        AppClipDefaultExperienceLocalizations(path: path + "/appClipDefaultExperienceLocalizations")
    }

    public struct AppClipDefaultExperienceLocalizations {
        /// Path: `/v1/appClipDefaultExperienceLocalizations`
        public let path: String

        public func post(_ body: AppStoreConnect.AppClipDefaultExperienceLocalizationCreateRequest) -> Request<AppStoreConnect.AppClipDefaultExperienceLocalizationResponse> {
            Request(method: "POST", url: path, body: body, id: "appClipDefaultExperienceLocalizations-create_instance")
        }
    }
}
