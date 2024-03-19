// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct BuildBundleFileSizesResponse: Codable, Equatable, Sendable {
    public var data: [BuildBundleFileSize]
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [BuildBundleFileSize], links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.links = links
        self.meta = meta
    }
}
