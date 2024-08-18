// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AppEncryptionDeclaration: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks?

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case appEncryptionDeclarations
    }

    public struct Attributes: Codable, Equatable, Sendable {
        public var appDescription: String?
        public var createdDate: Date?
        public var usesEncryption: Bool?
        public var isExempt: Bool?
        public var containsProprietaryCryptography: Bool?
        public var containsThirdPartyCryptography: Bool?
        public var isAvailableOnFrenchStore: Bool?
        public var platform: Platform?
        public var uploadedDate: Date?
        public var documentURL: String?
        public var documentName: String?
        public var documentType: String?
        public var appEncryptionDeclarationState: AppEncryptionDeclarationState?
        public var codeValue: String?

        public init(appDescription: String? = nil, createdDate: Date? = nil, usesEncryption: Bool? = nil, isExempt: Bool? = nil, containsProprietaryCryptography: Bool? = nil, containsThirdPartyCryptography: Bool? = nil, isAvailableOnFrenchStore: Bool? = nil, platform: Platform? = nil, uploadedDate: Date? = nil, documentURL: String? = nil, documentName: String? = nil, documentType: String? = nil, appEncryptionDeclarationState: AppEncryptionDeclarationState? = nil, codeValue: String? = nil) {
            self.appDescription = appDescription
            self.createdDate = createdDate
            self.usesEncryption = usesEncryption
            self.isExempt = isExempt
            self.containsProprietaryCryptography = containsProprietaryCryptography
            self.containsThirdPartyCryptography = containsThirdPartyCryptography
            self.isAvailableOnFrenchStore = isAvailableOnFrenchStore
            self.platform = platform
            self.uploadedDate = uploadedDate
            self.documentURL = documentURL
            self.documentName = documentName
            self.documentType = documentType
            self.appEncryptionDeclarationState = appEncryptionDeclarationState
            self.codeValue = codeValue
        }

        private enum CodingKeys: String, CodingKey {
            case appDescription
            case createdDate
            case usesEncryption
            case isExempt = "exempt"
            case containsProprietaryCryptography
            case containsThirdPartyCryptography
            case isAvailableOnFrenchStore = "availableOnFrenchStore"
            case platform
            case uploadedDate
            case documentURL = "documentUrl"
            case documentName
            case documentType
            case appEncryptionDeclarationState
            case codeValue
        }
    }

    public struct Relationships: Codable, Equatable, Sendable {
        public var app: App?
        public var builds: Builds?
        public var appEncryptionDeclarationDocument: AppEncryptionDeclarationDocument?

        public struct App: Codable, Equatable, Sendable {
            public var links: Links?
            public var data: Data?

            public struct Links: Codable, Equatable, Sendable {
                public var this: URL?
                public var related: URL?

                public init(this: URL? = nil, related: URL? = nil) {
                    self.this = this
                    self.related = related
                }

                private enum CodingKeys: String, CodingKey {
                    case this = "self"
                    case related
                }
            }

            public struct Data: Codable, Equatable, Identifiable, Sendable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, CaseIterable, Codable, Sendable {
                    case apps
                }

                public init(type: `Type` = .apps, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public struct Builds: Codable, Equatable, Sendable {
            public var links: Links?
            public var meta: PagingInformation?
            public var data: [Datum]?

            public struct Links: Codable, Equatable, Sendable {
                public var this: URL?
                public var related: URL?

                public init(this: URL? = nil, related: URL? = nil) {
                    self.this = this
                    self.related = related
                }

                private enum CodingKeys: String, CodingKey {
                    case this = "self"
                    case related
                }
            }

            public struct Datum: Codable, Equatable, Identifiable, Sendable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, CaseIterable, Codable, Sendable {
                    case builds
                }

                public init(type: `Type` = .builds, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
                self.links = links
                self.meta = meta
                self.data = data
            }
        }

        public struct AppEncryptionDeclarationDocument: Codable, Equatable, Sendable {
            public var links: Links?
            public var data: Data?

            public struct Links: Codable, Equatable, Sendable {
                public var this: URL?
                public var related: URL?

                public init(this: URL? = nil, related: URL? = nil) {
                    self.this = this
                    self.related = related
                }

                private enum CodingKeys: String, CodingKey {
                    case this = "self"
                    case related
                }
            }

            public struct Data: Codable, Equatable, Identifiable, Sendable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, CaseIterable, Codable, Sendable {
                    case appEncryptionDeclarationDocuments
                }

                public init(type: `Type` = .appEncryptionDeclarationDocuments, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public init(app: App? = nil, builds: Builds? = nil, appEncryptionDeclarationDocument: AppEncryptionDeclarationDocument? = nil) {
            self.app = app
            self.builds = builds
            self.appEncryptionDeclarationDocument = appEncryptionDeclarationDocument
        }
    }

    public init(type: `Type` = .appEncryptionDeclarations, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
