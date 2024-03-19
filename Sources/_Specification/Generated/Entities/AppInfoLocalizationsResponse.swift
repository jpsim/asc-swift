// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppInfoLocalizationsResponse: Codable, Equatable, Sendable {
    public var data: [AppInfoLocalization]
    public var included: [AppInfo]?
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [AppInfoLocalization], included: [AppInfo]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }
}
