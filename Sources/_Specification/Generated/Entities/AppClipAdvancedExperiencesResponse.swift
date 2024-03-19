// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppClipAdvancedExperiencesResponse: Codable, Equatable, Sendable {
    public var data: [AppClipAdvancedExperience]
    public var included: [IncludedItem]?
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public enum IncludedItem: Codable, Equatable, Sendable {
        case appClip(AppClip)
        case appClipAdvancedExperienceImage(AppClipAdvancedExperienceImage)
        case appClipAdvancedExperienceLocalization(AppClipAdvancedExperienceLocalization)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(AppClip.self) {
                self = .appClip(value)
            } else if let value = try? container.decode(AppClipAdvancedExperienceImage.self) {
                self = .appClipAdvancedExperienceImage(value)
            } else if let value = try? container.decode(AppClipAdvancedExperienceLocalization.self) {
                self = .appClipAdvancedExperienceLocalization(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (AppClip, AppClipAdvancedExperienceImage, AppClipAdvancedExperienceLocalization)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .appClip(let value): try container.encode(value)
            case .appClipAdvancedExperienceImage(let value): try container.encode(value)
            case .appClipAdvancedExperienceLocalization(let value): try container.encode(value)
            }
        }
    }

    public init(data: [AppClipAdvancedExperience], included: [IncludedItem]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }
}
