// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AppEventLocalizationResponse: Codable, Equatable, Sendable {
    /// AppEventLocalization
    public var data: AppEventLocalization
    public var included: [IncludedItem]?
    public var links: DocumentLinks

    public enum IncludedItem: Codable, Equatable, Sendable {
        case appEvent(AppEvent)
        case appEventScreenshot(AppEventScreenshot)
        case appEventVideoClip(AppEventVideoClip)

        public init(from decoder: any Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(AppEvent.self) {
                self = .appEvent(value)
            } else if let value = try? container.decode(AppEventScreenshot.self) {
                self = .appEventScreenshot(value)
            } else if let value = try? container.decode(AppEventVideoClip.self) {
                self = .appEventVideoClip(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (AppEvent, AppEventScreenshot, AppEventVideoClip)."
                )
            }
        }

        public func encode(to encoder: any Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .appEvent(let value): try container.encode(value)
            case .appEventScreenshot(let value): try container.encode(value)
            case .appEventVideoClip(let value): try container.encode(value)
            }
        }
    }

    public init(data: AppEventLocalization, included: [IncludedItem]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
