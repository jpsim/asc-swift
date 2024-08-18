// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AppCustomProductPageResponse: Codable, Equatable, Sendable {
    /// AppCustomProductPage
    public var data: AppCustomProductPage
    public var included: [IncludedItem]?
    public var links: DocumentLinks

    public enum IncludedItem: Codable, Equatable, Sendable {
        case app(App)
        case appCustomProductPageVersion(AppCustomProductPageVersion)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(App.self) {
                self = .app(value)
            } else if let value = try? container.decode(AppCustomProductPageVersion.self) {
                self = .appCustomProductPageVersion(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (App, AppCustomProductPageVersion)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .app(let value): try container.encode(value)
            case .appCustomProductPageVersion(let value): try container.encode(value)
            }
        }
    }

    public init(data: AppCustomProductPage, included: [IncludedItem]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
