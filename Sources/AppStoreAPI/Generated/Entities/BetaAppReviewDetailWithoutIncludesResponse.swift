// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct BetaAppReviewDetailWithoutIncludesResponse: Codable, Equatable, Sendable {
    /// BetaAppReviewDetail
    public var data: BetaAppReviewDetail
    public var links: DocumentLinks

    public init(data: BetaAppReviewDetail, links: DocumentLinks) {
        self.data = data
        self.links = links
    }
}
