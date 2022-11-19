// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.BundleIDs.WithID.Relationships {
    public var profiles: Profiles {
        Profiles(path: path + "/profiles")
    }

    public struct Profiles {
        /// Path: `/v1/bundleIds/{id}/relationships/profiles`
        public let path: String
    }
}
