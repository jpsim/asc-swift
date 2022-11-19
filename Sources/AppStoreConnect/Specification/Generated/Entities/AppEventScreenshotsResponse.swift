// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation

public struct AppEventScreenshotsResponse: Codable, Hashable {
    public var data: [AppEventScreenshot]
    public var included: [AppEventLocalization]?
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [AppEventScreenshot], included: [AppEventLocalization]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }
}
