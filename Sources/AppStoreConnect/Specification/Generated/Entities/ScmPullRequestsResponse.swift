// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation

public struct ScmPullRequestsResponse: Codable, Hashable {
    public var data: [ScmPullRequest]
    public var included: [ScmRepository]?
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [ScmPullRequest], included: [ScmRepository]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }
}
