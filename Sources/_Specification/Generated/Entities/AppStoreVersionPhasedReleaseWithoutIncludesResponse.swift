// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppStoreVersionPhasedReleaseWithoutIncludesResponse: Codable, Equatable {
    /// AppStoreVersion
    public var data: AppStoreVersion
    public var links: DocumentLinks

    public init(data: AppStoreVersion, links: DocumentLinks) {
        self.data = data
        self.links = links
    }
}
