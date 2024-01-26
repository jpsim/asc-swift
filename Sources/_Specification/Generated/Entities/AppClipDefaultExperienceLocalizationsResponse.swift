// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppClipDefaultExperienceLocalizationsResponse: Codable, Equatable {
    public var data: [AppClipDefaultExperienceLocalization]
    public var included: [IncludedItem]?
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public enum IncludedItem: Codable, Equatable {
        case appClipDefaultExperience(AppClipDefaultExperience)
        case appClipHeaderImage(AppClipHeaderImage)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(AppClipDefaultExperience.self) {
                self = .appClipDefaultExperience(value)
            } else if let value = try? container.decode(AppClipHeaderImage.self) {
                self = .appClipHeaderImage(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (AppClipDefaultExperience, AppClipHeaderImage)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .appClipDefaultExperience(let value): try container.encode(value)
            case .appClipHeaderImage(let value): try container.encode(value)
            }
        }
    }

    public init(data: [AppClipDefaultExperienceLocalization], included: [IncludedItem]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }
}
