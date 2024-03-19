// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct Certificate: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var links: ResourceLinks?

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case certificates
    }

    public struct Attributes: Codable, Equatable, Sendable {
        public var name: String?
        public var certificateType: CertificateType?
        public var displayName: String?
        public var serialNumber: String?
        public var platform: BundleIDPlatform?
        public var expirationDate: Date?
        public var certificateContent: String?

        public init(name: String? = nil, certificateType: CertificateType? = nil, displayName: String? = nil, serialNumber: String? = nil, platform: BundleIDPlatform? = nil, expirationDate: Date? = nil, certificateContent: String? = nil) {
            self.name = name
            self.certificateType = certificateType
            self.displayName = displayName
            self.serialNumber = serialNumber
            self.platform = platform
            self.expirationDate = expirationDate
            self.certificateContent = certificateContent
        }
    }

    public init(type: `Type` = .certificates, id: String, attributes: Attributes? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.links = links
    }
}
