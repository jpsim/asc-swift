// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct PassTypeIDResponse: Codable, Equatable, Sendable {
    /// PassTypeId
    public var data: PassTypeID
    public var included: [Certificate]?
    public var links: DocumentLinks

    public init(data: PassTypeID, included: [Certificate]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
