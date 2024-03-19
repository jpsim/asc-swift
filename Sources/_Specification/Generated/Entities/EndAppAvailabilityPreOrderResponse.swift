// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct EndAppAvailabilityPreOrderResponse: Codable, Equatable, Sendable {
    /// EndAppAvailabilityPreOrder
    public var data: EndAppAvailabilityPreOrder
    public var links: DocumentLinks

    public init(data: EndAppAvailabilityPreOrder, links: DocumentLinks) {
        self.data = data
        self.links = links
    }
}
