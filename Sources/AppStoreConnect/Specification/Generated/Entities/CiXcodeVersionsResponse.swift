// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation

public struct CiXcodeVersionsResponse: Codable, Hashable {
    public var data: [CiXcodeVersion]
    public var included: [CiMacOsVersion]?
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [CiXcodeVersion], included: [CiMacOsVersion]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }
}
