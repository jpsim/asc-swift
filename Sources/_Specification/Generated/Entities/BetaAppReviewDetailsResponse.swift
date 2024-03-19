// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct BetaAppReviewDetailsResponse: Codable, Equatable, Sendable {
    public var data: [BetaAppReviewDetail]
    public var included: [App]?
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [BetaAppReviewDetail], included: [App]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }
}
