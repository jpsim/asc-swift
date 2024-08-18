// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct InAppPurchaseContentResponse: Codable, Equatable, Sendable {
    /// InAppPurchaseContent
    public var data: InAppPurchaseContent
    public var included: [InAppPurchaseV2]?
    public var links: DocumentLinks

    public init(data: InAppPurchaseContent, included: [InAppPurchaseV2]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
