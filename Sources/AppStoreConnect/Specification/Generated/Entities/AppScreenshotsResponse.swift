// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation

public struct AppScreenshotsResponse: Codable, Hashable {
    public var data: [AppScreenshot]
    public var included: [AppScreenshotSet]?
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [AppScreenshot], included: [AppScreenshotSet]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }
}
