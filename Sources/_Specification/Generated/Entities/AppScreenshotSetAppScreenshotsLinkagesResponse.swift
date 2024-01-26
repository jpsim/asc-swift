// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppScreenshotSetAppScreenshotsLinkagesResponse: Codable, Equatable {
    public var data: [Datum]
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public struct Datum: Codable, Equatable, Identifiable {
        public var type: `Type`
        public var id: String

        public enum `Type`: String, Codable, CaseIterable {
            case appScreenshots
        }

        public init(type: `Type`, id: String) {
            self.type = type
            self.id = id
        }
    }

    public init(data: [Datum], links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.links = links
        self.meta = meta
    }
}
