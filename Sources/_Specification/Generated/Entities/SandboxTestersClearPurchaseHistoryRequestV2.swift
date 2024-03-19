// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct SandboxTestersClearPurchaseHistoryRequestV2: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String
    public var links: ResourceLinks?

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case sandboxTestersClearPurchaseHistoryRequest
    }

    public init(type: `Type` = .sandboxTestersClearPurchaseHistoryRequest, id: String, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.links = links
    }
}
