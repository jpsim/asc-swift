// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1 {
    public var appStoreVersionSubmissions: AppStoreVersionSubmissions {
        AppStoreVersionSubmissions(path: path + "/appStoreVersionSubmissions")
    }

    public struct AppStoreVersionSubmissions {
        /// Path: `/v1/appStoreVersionSubmissions`
        public let path: String

        public func post(_ body: AppStoreAPI.AppStoreVersionSubmissionCreateRequest) -> Request<AppStoreAPI.AppStoreVersionSubmissionResponse> {
            Request(path: path, method: "POST", body: body, id: "appStoreVersionSubmissions-create_instance")
        }
    }
}
