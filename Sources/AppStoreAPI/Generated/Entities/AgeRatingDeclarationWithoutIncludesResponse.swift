// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AgeRatingDeclarationWithoutIncludesResponse: Codable, Equatable, Sendable {
    /// AgeRatingDeclaration
    public var data: AgeRatingDeclaration
    public var links: DocumentLinks

    public init(data: AgeRatingDeclaration, links: DocumentLinks) {
        self.data = data
        self.links = links
    }
}
