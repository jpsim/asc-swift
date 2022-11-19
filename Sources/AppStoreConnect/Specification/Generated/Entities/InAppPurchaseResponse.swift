// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation

public struct InAppPurchaseResponse: Codable, Hashable {
    /// InAppPurchase
    public var data: InAppPurchase
    public var included: [App]?
    public var links: DocumentLinks

    public init(data: InAppPurchase, included: [App]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
