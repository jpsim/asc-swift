// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct ScmPullRequestResponse: Codable, Equatable, Sendable {
    /// ScmPullRequest
    public var data: ScmPullRequest
    public var included: [ScmRepository]?
    public var links: DocumentLinks

    public init(data: ScmPullRequest, included: [ScmRepository]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
