// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppEventScreenshotResponse: Codable, Equatable {
    /// AppEventScreenshot
    public var data: AppEventScreenshot
    public var included: [AppEventLocalization]?
    public var links: DocumentLinks

    public init(data: AppEventScreenshot, included: [AppEventLocalization]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
