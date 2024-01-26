// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppInfoResponse: Codable, Equatable {
    /// AppInfo
    public var data: AppInfo
    public var included: [IncludedItem]?
    public var links: DocumentLinks

    public enum IncludedItem: Codable, Equatable {
        case app(App)
        case ageRatingDeclaration(AgeRatingDeclaration)
        case appInfoLocalization(AppInfoLocalization)
        case appCategory(AppCategory)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(App.self) {
                self = .app(value)
            } else if let value = try? container.decode(AgeRatingDeclaration.self) {
                self = .ageRatingDeclaration(value)
            } else if let value = try? container.decode(AppInfoLocalization.self) {
                self = .appInfoLocalization(value)
            } else if let value = try? container.decode(AppCategory.self) {
                self = .appCategory(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (App, AgeRatingDeclaration, AppInfoLocalization, AppCategory)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .app(let value): try container.encode(value)
            case .ageRatingDeclaration(let value): try container.encode(value)
            case .appInfoLocalization(let value): try container.encode(value)
            case .appCategory(let value): try container.encode(value)
            }
        }
    }

    public init(data: AppInfo, included: [IncludedItem]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
