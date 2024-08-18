// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct ProfileCreateRequest: Codable, Equatable, Sendable {
    public var data: Data

    public struct Data: Codable, Equatable, Sendable {
        public var type: `Type`
        public var attributes: Attributes
        public var relationships: Relationships

        public enum `Type`: String, CaseIterable, Codable, Sendable {
            case profiles
        }

        public struct Attributes: Codable, Equatable, Sendable {
            public var name: String
            public var profileType: ProfileType

            public enum ProfileType: String, CaseIterable, Codable, Sendable {
                case iosAppDevelopment = "IOS_APP_DEVELOPMENT"
                case iosAppStore = "IOS_APP_STORE"
                case iosAppAdhoc = "IOS_APP_ADHOC"
                case iosAppInhouse = "IOS_APP_INHOUSE"
                case macAppDevelopment = "MAC_APP_DEVELOPMENT"
                case macAppStore = "MAC_APP_STORE"
                case macAppDirect = "MAC_APP_DIRECT"
                case tvosAppDevelopment = "TVOS_APP_DEVELOPMENT"
                case tvosAppStore = "TVOS_APP_STORE"
                case tvosAppAdhoc = "TVOS_APP_ADHOC"
                case tvosAppInhouse = "TVOS_APP_INHOUSE"
                case macCatalystAppDevelopment = "MAC_CATALYST_APP_DEVELOPMENT"
                case macCatalystAppStore = "MAC_CATALYST_APP_STORE"
                case macCatalystAppDirect = "MAC_CATALYST_APP_DIRECT"
            }

            public init(name: String, profileType: ProfileType) {
                self.name = name
                self.profileType = profileType
            }
        }

        public struct Relationships: Codable, Equatable, Sendable {
            public var bundleID: BundleID
            public var devices: Devices?
            public var certificates: Certificates

            public struct BundleID: Codable, Equatable, Sendable {
                public var data: Data

                public struct Data: Codable, Equatable, Identifiable, Sendable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, CaseIterable, Codable, Sendable {
                        case bundleIDs = "bundleIds"
                    }

                    public init(type: `Type` = .bundleIDs, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data) {
                    self.data = data
                }
            }

            public struct Devices: Codable, Equatable, Sendable {
                public var data: [Datum]?

                public struct Datum: Codable, Equatable, Identifiable, Sendable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, CaseIterable, Codable, Sendable {
                        case devices
                    }

                    public init(type: `Type` = .devices, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: [Datum]? = nil) {
                    self.data = data
                }
            }

            public struct Certificates: Codable, Equatable, Sendable {
                public var data: [Datum]

                public struct Datum: Codable, Equatable, Identifiable, Sendable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, CaseIterable, Codable, Sendable {
                        case certificates
                    }

                    public init(type: `Type` = .certificates, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: [Datum]) {
                    self.data = data
                }
            }

            public init(bundleID: BundleID, devices: Devices? = nil, certificates: Certificates) {
                self.bundleID = bundleID
                self.devices = devices
                self.certificates = certificates
            }

            private enum CodingKeys: String, CodingKey {
                case bundleID = "bundleId"
                case devices
                case certificates
            }
        }

        public init(type: `Type` = .profiles, attributes: Attributes, relationships: Relationships) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
