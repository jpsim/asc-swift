// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct MarketplaceDomainResponse: Codable, Equatable, Sendable {
    /// MarketplaceDomain
    public var data: MarketplaceDomain
    public var links: DocumentLinks

    public init(data: MarketplaceDomain, links: DocumentLinks) {
        self.data = data
        self.links = links
    }
}
