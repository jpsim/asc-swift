// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppCustomProductPageLocalizationResponse: Codable, Equatable {
    /// AppCustomProductPageLocalization
    public var data: AppCustomProductPageLocalization
    public var included: [IncludedItem]?
    public var links: DocumentLinks

    public enum IncludedItem: Codable, Equatable {
        case appCustomProductPageVersion(AppCustomProductPageVersion)
        case appScreenshotSet(AppScreenshotSet)
        case appPreviewSet(AppPreviewSet)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(AppCustomProductPageVersion.self) {
                self = .appCustomProductPageVersion(value)
            } else if let value = try? container.decode(AppScreenshotSet.self) {
                self = .appScreenshotSet(value)
            } else if let value = try? container.decode(AppPreviewSet.self) {
                self = .appPreviewSet(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (AppCustomProductPageVersion, AppScreenshotSet, AppPreviewSet)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .appCustomProductPageVersion(let value): try container.encode(value)
            case .appScreenshotSet(let value): try container.encode(value)
            case .appPreviewSet(let value): try container.encode(value)
            }
        }
    }

    public init(data: AppCustomProductPageLocalization, included: [IncludedItem]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
