// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation

public struct AppPriceInlineCreate: Codable, Hashable, Identifiable {
    public var type: `Type`
    public var id: String?

    public enum `Type`: String, Codable, CaseIterable {
        case appPrices
    }

    public init(type: `Type`, id: String? = nil) {
        self.type = type
        self.id = id
    }
}
