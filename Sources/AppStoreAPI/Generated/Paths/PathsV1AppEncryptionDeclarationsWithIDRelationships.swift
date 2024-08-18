// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.AppEncryptionDeclarations.WithID {
    public var relationships: Relationships {
        Relationships(path: path + "/relationships")
    }

    public struct Relationships {
        /// Path: `/v1/appEncryptionDeclarations/{id}/relationships`
        public let path: String
    }
}
