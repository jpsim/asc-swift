// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct BuildIconsWithoutIncludesResponse: Codable, Equatable {
    public var data: [Build]
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [Build], links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.links = links
        self.meta = meta
    }
}
