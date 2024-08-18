// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1 {
    public var appClipDefaultExperiences: AppClipDefaultExperiences {
        AppClipDefaultExperiences(path: path + "/appClipDefaultExperiences")
    }

    public struct AppClipDefaultExperiences {
        /// Path: `/v1/appClipDefaultExperiences`
        public let path: String

        public func post(_ body: AppStoreAPI.AppClipDefaultExperienceCreateRequest) -> Request<AppStoreAPI.AppClipDefaultExperienceResponse> {
            Request(path: path, method: "POST", body: body, id: "appClipDefaultExperiences-create_instance")
        }
    }
}
