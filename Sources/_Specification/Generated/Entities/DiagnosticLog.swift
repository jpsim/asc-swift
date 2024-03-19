// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct DiagnosticLog: Codable, Equatable, Identifiable {
    public var type: `Type`
    public var id: String
    public var links: ResourceLinks?

    public enum `Type`: String, Codable, CaseIterable {
        case diagnosticLogs
    }

    public init(type: `Type` = .diagnosticLogs, id: String, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.links = links
    }
}
