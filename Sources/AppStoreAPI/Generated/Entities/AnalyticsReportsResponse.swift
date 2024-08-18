// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AnalyticsReportsResponse: Codable, Equatable, Sendable {
    public var data: [AnalyticsReport]
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [AnalyticsReport], links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.links = links
        self.meta = meta
    }
}
