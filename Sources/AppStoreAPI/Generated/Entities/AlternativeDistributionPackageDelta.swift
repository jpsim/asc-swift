// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AlternativeDistributionPackageDelta: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var links: ResourceLinks?

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case alternativeDistributionPackageDeltas
    }

    public struct Attributes: Codable, Equatable, Sendable {
        public var url: URL?
        public var urlExpirationDate: Date?
        public var alternativeDistributionKeyBlob: String?
        public var fileChecksum: String?

        public init(url: URL? = nil, urlExpirationDate: Date? = nil, alternativeDistributionKeyBlob: String? = nil, fileChecksum: String? = nil) {
            self.url = url
            self.urlExpirationDate = urlExpirationDate
            self.alternativeDistributionKeyBlob = alternativeDistributionKeyBlob
            self.fileChecksum = fileChecksum
        }
    }

    public init(type: `Type` = .alternativeDistributionPackageDeltas, id: String, attributes: Attributes? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.links = links
    }
}
