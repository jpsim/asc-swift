// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.Apps.WithID.Relationships {
    public var appEvents: AppEvents {
        AppEvents(path: path + "/appEvents")
    }

    public struct AppEvents {
        /// Path: `/v1/apps/{id}/relationships/appEvents`
        public let path: String
    }
}
