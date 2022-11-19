// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.CiWorkflows.WithID.Relationships {
    public var repository: Repository {
        Repository(path: path + "/repository")
    }

    public struct Repository {
        /// Path: `/v1/ciWorkflows/{id}/relationships/repository`
        public let path: String
    }
}
