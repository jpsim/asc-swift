// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.Builds.WithID.Relationships {
    public var appEncryptionDeclaration: AppEncryptionDeclaration {
        AppEncryptionDeclaration(path: path + "/appEncryptionDeclaration")
    }

    public struct AppEncryptionDeclaration {
        /// Path: `/v1/builds/{id}/relationships/appEncryptionDeclaration`
        public let path: String

        public var get: Request<AppStoreAPI.BuildAppEncryptionDeclarationLinkageResponse> {
            Request(path: path, method: "GET", id: "builds-appEncryptionDeclaration-get_to_one_relationship")
        }

        public func patch(_ body: AppStoreAPI.BuildAppEncryptionDeclarationLinkageRequest) -> Request<Void> {
            Request(path: path, method: "PATCH", body: body, id: "builds-appEncryptionDeclaration-update_to_one_relationship")
        }
    }
}
