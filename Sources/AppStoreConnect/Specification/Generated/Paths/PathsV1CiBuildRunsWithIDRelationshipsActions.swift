// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.CiBuildRuns.WithID.Relationships {
    public var actions: Actions {
        Actions(path: path + "/actions")
    }

    public struct Actions {
        /// Path: `/v1/ciBuildRuns/{id}/relationships/actions`
        public let path: String
    }
}
