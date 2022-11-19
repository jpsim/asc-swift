// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.Builds.WithID.Relationships {
    public var diagnosticSignatures: DiagnosticSignatures {
        DiagnosticSignatures(path: path + "/diagnosticSignatures")
    }

    public struct DiagnosticSignatures {
        /// Path: `/v1/builds/{id}/relationships/diagnosticSignatures`
        public let path: String
    }
}
