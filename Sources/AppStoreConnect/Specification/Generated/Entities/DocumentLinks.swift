// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation

public struct DocumentLinks: Codable, Hashable {
    public var this: String

    public init(this: String) {
        self.this = this
    }

    private enum CodingKeys: String, CodingKey {
        case this = "self"
    }
}
