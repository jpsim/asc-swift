// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct CiIssueResponse: Codable, Equatable, Sendable {
    /// CiIssue
    public var data: CiIssue
    public var links: DocumentLinks

    public init(data: CiIssue, links: DocumentLinks) {
        self.data = data
        self.links = links
    }
}
