// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct ResourceLinks: Codable, Equatable {
    public var this: URL?

    public init(this: URL? = nil) {
        self.this = this
    }

    private enum CodingKeys: String, CodingKey {
        case this = "self"
    }
}
