// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation

public struct CiBuildActionResponse: Codable, Hashable {
    /// CiBuildAction
    public var data: CiBuildAction
    public var included: [CiBuildRun]?
    public var links: DocumentLinks

    public init(data: CiBuildAction, included: [CiBuildRun]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
