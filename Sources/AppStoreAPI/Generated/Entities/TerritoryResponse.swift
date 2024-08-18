// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct TerritoryResponse: Codable, Equatable, Sendable {
    /// Territory
    public var data: Territory
    public var links: DocumentLinks

    public init(data: Territory, links: DocumentLinks) {
        self.data = data
        self.links = links
    }
}
