// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct BetaAppReviewSubmissionWithoutIncludesResponse: Codable, Hashable {
    /// Build
    public var data: Build
    public var links: DocumentLinks

    public init(data: Build, links: DocumentLinks) {
        self.data = data
        self.links = links
    }
}
