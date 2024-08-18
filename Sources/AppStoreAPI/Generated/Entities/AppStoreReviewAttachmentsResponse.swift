// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AppStoreReviewAttachmentsResponse: Codable, Equatable, Sendable {
    public var data: [AppStoreReviewAttachment]
    public var included: [AppStoreReviewDetail]?
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [AppStoreReviewAttachment], included: [AppStoreReviewDetail]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }
}
