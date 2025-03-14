// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.AppStoreVersionSubmissions {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/appStoreVersionSubmissions/{id}`
        public let path: String

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "appStoreVersionSubmissions_deleteInstance")
        }
    }
}
