// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation

public struct SubscriptionOfferCodeCustomCodeResponse: Codable, Hashable {
    /// SubscriptionOfferCodeCustomCode
    public var data: SubscriptionOfferCodeCustomCode
    public var included: [SubscriptionOfferCode]?
    public var links: DocumentLinks

    public init(data: SubscriptionOfferCodeCustomCode, included: [SubscriptionOfferCode]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
