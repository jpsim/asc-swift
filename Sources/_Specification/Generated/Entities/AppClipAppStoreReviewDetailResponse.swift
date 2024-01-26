// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppClipAppStoreReviewDetailResponse: Codable, Equatable {
    /// AppClipAppStoreReviewDetail
    public var data: AppClipAppStoreReviewDetail
    public var included: [AppClipDefaultExperience]?
    public var links: DocumentLinks

    public init(data: AppClipAppStoreReviewDetail, included: [AppClipDefaultExperience]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
