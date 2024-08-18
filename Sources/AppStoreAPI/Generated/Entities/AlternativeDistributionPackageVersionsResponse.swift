// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AlternativeDistributionPackageVersionsResponse: Codable, Equatable, Sendable {
    public var data: [AlternativeDistributionPackageVersion]
    public var included: [IncludedItem]?
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public enum IncludedItem: Codable, Equatable, Sendable {
        case alternativeDistributionPackageVariant(AlternativeDistributionPackageVariant)
        case alternativeDistributionPackageDelta(AlternativeDistributionPackageDelta)
        case alternativeDistributionPackage(AlternativeDistributionPackage)

        public init(from decoder: any Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(AlternativeDistributionPackageVariant.self) {
                self = .alternativeDistributionPackageVariant(value)
            } else if let value = try? container.decode(AlternativeDistributionPackageDelta.self) {
                self = .alternativeDistributionPackageDelta(value)
            } else if let value = try? container.decode(AlternativeDistributionPackage.self) {
                self = .alternativeDistributionPackage(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (AlternativeDistributionPackageVariant, AlternativeDistributionPackageDelta, AlternativeDistributionPackage)."
                )
            }
        }

        public func encode(to encoder: any Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .alternativeDistributionPackageVariant(let value): try container.encode(value)
            case .alternativeDistributionPackageDelta(let value): try container.encode(value)
            case .alternativeDistributionPackage(let value): try container.encode(value)
            }
        }
    }

    public init(data: [AlternativeDistributionPackageVersion], included: [IncludedItem]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }
}
