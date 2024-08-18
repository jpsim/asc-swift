// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct SubscriptionAppStoreReviewScreenshotResponse: Codable, Equatable, Sendable {
    /// SubscriptionAppStoreReviewScreenshot
    public var data: SubscriptionAppStoreReviewScreenshot
    public var included: [Subscription]?
    public var links: DocumentLinks

    public init(data: SubscriptionAppStoreReviewScreenshot, included: [Subscription]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
