// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct BetaTesterResponse: Codable, Equatable {
    /// BetaTester
    public var data: BetaTester
    public var included: [IncludedItem]?
    public var links: DocumentLinks

    public enum IncludedItem: Codable, Equatable {
        case app(App)
        case betaGroup(BetaGroup)
        case build(Build)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(App.self) {
                self = .app(value)
            } else if let value = try? container.decode(BetaGroup.self) {
                self = .betaGroup(value)
            } else if let value = try? container.decode(Build.self) {
                self = .build(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (App, BetaGroup, Build)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .app(let value): try container.encode(value)
            case .betaGroup(let value): try container.encode(value)
            case .build(let value): try container.encode(value)
            }
        }
    }

    public init(data: BetaTester, included: [IncludedItem]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
