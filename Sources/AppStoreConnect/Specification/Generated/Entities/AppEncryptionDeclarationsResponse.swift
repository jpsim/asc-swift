// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation

public struct AppEncryptionDeclarationsResponse: Codable, Hashable {
    public var data: [AppEncryptionDeclaration]
    public var included: [App]?
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [AppEncryptionDeclaration], included: [App]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }
}
