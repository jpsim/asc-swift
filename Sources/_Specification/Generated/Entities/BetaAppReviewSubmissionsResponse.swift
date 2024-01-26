// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct BetaAppReviewSubmissionsResponse: Codable, Equatable {
    public var data: [BetaAppReviewSubmission]
    public var included: [Build]?
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [BetaAppReviewSubmission], included: [Build]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }
}
