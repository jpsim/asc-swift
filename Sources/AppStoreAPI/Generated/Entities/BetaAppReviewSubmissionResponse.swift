// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct BetaAppReviewSubmissionResponse: Codable, Equatable, Sendable {
    /// BetaAppReviewSubmission
    public var data: BetaAppReviewSubmission
    public var included: [Build]?
    public var links: DocumentLinks

    public init(data: BetaAppReviewSubmission, included: [Build]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
