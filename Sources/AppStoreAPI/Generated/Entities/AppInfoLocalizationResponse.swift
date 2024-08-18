// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AppInfoLocalizationResponse: Codable, Equatable, Sendable {
    /// AppInfoLocalization
    public var data: AppInfoLocalization
    public var included: [AppInfo]?
    public var links: DocumentLinks

    public init(data: AppInfoLocalization, included: [AppInfo]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
