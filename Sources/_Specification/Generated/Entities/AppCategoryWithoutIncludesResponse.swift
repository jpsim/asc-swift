// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppCategoryWithoutIncludesResponse: Codable, Equatable {
    /// AppCategory
    public var data: AppCategory
    public var links: DocumentLinks

    public init(data: AppCategory, links: DocumentLinks) {
        self.data = data
        self.links = links
    }
}
