// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct PromotedPurchaseImagesResponse: Codable, Equatable {
    public var data: [PromotedPurchaseImage]
    public var included: [PromotedPurchase]?
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [PromotedPurchaseImage], included: [PromotedPurchase]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }
}
