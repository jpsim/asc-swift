// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct SandboxTestersClearPurchaseHistoryRequestV2: Codable, Hashable, Identifiable {
    public var type: `Type`
    public var id: String

    public enum `Type`: String, Codable, CaseIterable {
        case sandboxTestersClearPurchaseHistoryRequest
    }

    public init(type: `Type`, id: String) {
        self.type = type
        self.id = id
    }
}
