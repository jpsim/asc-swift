// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct ReviewSubmissionsResponse: Codable, Equatable, Sendable {
    public var data: [ReviewSubmission]
    public var included: [IncludedItem]?
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public enum IncludedItem: Codable, Equatable, Sendable {
        case app(App)
        case reviewSubmissionItem(ReviewSubmissionItem)
        case appStoreVersion(AppStoreVersion)
        case actor(Actor)

        public init(from decoder: any Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(App.self) {
                self = .app(value)
            } else if let value = try? container.decode(ReviewSubmissionItem.self) {
                self = .reviewSubmissionItem(value)
            } else if let value = try? container.decode(AppStoreVersion.self) {
                self = .appStoreVersion(value)
            } else if let value = try? container.decode(Actor.self) {
                self = .actor(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (App, ReviewSubmissionItem, AppStoreVersion, Actor)."
                )
            }
        }

        public func encode(to encoder: any Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .app(let value): try container.encode(value)
            case .reviewSubmissionItem(let value): try container.encode(value)
            case .appStoreVersion(let value): try container.encode(value)
            case .actor(let value): try container.encode(value)
            }
        }
    }

    public init(data: [ReviewSubmission], included: [IncludedItem]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }
}
