// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AppClipDomainStatusResponse: Codable, Equatable, Sendable {
    /// AppClipDomainStatus
    public var data: AppClipDomainStatus
    public var links: DocumentLinks

    public init(data: AppClipDomainStatus, links: DocumentLinks) {
        self.data = data
        self.links = links
    }
}
