// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppClipDefaultExperienceResponse: Codable, Equatable {
    /// AppClipDefaultExperience
    public var data: AppClipDefaultExperience
    public var included: [IncludedItem]?
    public var links: DocumentLinks

    public enum IncludedItem: Codable, Equatable {
        case appClip(AppClip)
        case appStoreVersion(AppStoreVersion)
        case appClipDefaultExperienceLocalization(AppClipDefaultExperienceLocalization)
        case appClipAppStoreReviewDetail(AppClipAppStoreReviewDetail)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(AppClip.self) {
                self = .appClip(value)
            } else if let value = try? container.decode(AppStoreVersion.self) {
                self = .appStoreVersion(value)
            } else if let value = try? container.decode(AppClipDefaultExperienceLocalization.self) {
                self = .appClipDefaultExperienceLocalization(value)
            } else if let value = try? container.decode(AppClipAppStoreReviewDetail.self) {
                self = .appClipAppStoreReviewDetail(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (AppClip, AppStoreVersion, AppClipDefaultExperienceLocalization, AppClipAppStoreReviewDetail)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .appClip(let value): try container.encode(value)
            case .appStoreVersion(let value): try container.encode(value)
            case .appClipDefaultExperienceLocalization(let value): try container.encode(value)
            case .appClipAppStoreReviewDetail(let value): try container.encode(value)
            }
        }
    }

    public init(data: AppClipDefaultExperience, included: [IncludedItem]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
