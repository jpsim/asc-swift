// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppPreviewResponse: Codable, Equatable {
    /// AppPreview
    public var data: AppPreview
    public var included: [AppPreviewSet]?
    public var links: DocumentLinks

    public init(data: AppPreview, included: [AppPreviewSet]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
