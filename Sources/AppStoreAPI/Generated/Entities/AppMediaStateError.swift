// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AppMediaStateError: Codable, Equatable, Sendable {
    public var code: String?
    public var description: String?

    public init(code: String? = nil, description: String? = nil) {
        self.code = code
        self.description = description
    }
}
