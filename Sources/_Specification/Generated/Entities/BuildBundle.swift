// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct BuildBundle: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks?

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case buildBundles
    }

    public struct Attributes: Codable, Equatable, Sendable {
        public var bundleID: String?
        public var bundleType: BundleType?
        public var sdkBuild: String?
        public var platformBuild: String?
        public var fileName: String?
        public var hasSirikit: Bool?
        public var hasOnDemandResources: Bool?
        public var hasPrerenderedIcon: Bool?
        public var usesLocationServices: Bool?
        public var isIosBuildMacAppStoreCompatible: Bool?
        public var isIncludesSymbols: Bool?
        public var dSYMURL: URL?
        public var supportedArchitectures: [String]?
        public var requiredCapabilities: [String]?
        public var deviceProtocols: [String]?
        public var locales: [String]?
        public var entitlements: [String: [String: String]]?

        public enum BundleType: String, CaseIterable, Codable, Sendable {
            case app = "APP"
            case appClip = "APP_CLIP"
        }

        public init(bundleID: String? = nil, bundleType: BundleType? = nil, sdkBuild: String? = nil, platformBuild: String? = nil, fileName: String? = nil, hasSirikit: Bool? = nil, hasOnDemandResources: Bool? = nil, hasPrerenderedIcon: Bool? = nil, usesLocationServices: Bool? = nil, isIosBuildMacAppStoreCompatible: Bool? = nil, isIncludesSymbols: Bool? = nil, dSYMURL: URL? = nil, supportedArchitectures: [String]? = nil, requiredCapabilities: [String]? = nil, deviceProtocols: [String]? = nil, locales: [String]? = nil, entitlements: [String: [String: String]]? = nil) {
            self.bundleID = bundleID
            self.bundleType = bundleType
            self.sdkBuild = sdkBuild
            self.platformBuild = platformBuild
            self.fileName = fileName
            self.hasSirikit = hasSirikit
            self.hasOnDemandResources = hasOnDemandResources
            self.hasPrerenderedIcon = hasPrerenderedIcon
            self.usesLocationServices = usesLocationServices
            self.isIosBuildMacAppStoreCompatible = isIosBuildMacAppStoreCompatible
            self.isIncludesSymbols = isIncludesSymbols
            self.dSYMURL = dSYMURL
            self.supportedArchitectures = supportedArchitectures
            self.requiredCapabilities = requiredCapabilities
            self.deviceProtocols = deviceProtocols
            self.locales = locales
            self.entitlements = entitlements
        }

        private enum CodingKeys: String, CodingKey {
            case bundleID = "bundleId"
            case bundleType
            case sdkBuild
            case platformBuild
            case fileName
            case hasSirikit
            case hasOnDemandResources
            case hasPrerenderedIcon
            case usesLocationServices
            case isIosBuildMacAppStoreCompatible
            case isIncludesSymbols = "includesSymbols"
            case dSYMURL = "dSYMUrl"
            case supportedArchitectures
            case requiredCapabilities
            case deviceProtocols
            case locales
            case entitlements
        }
    }

    public struct Relationships: Codable, Equatable, Sendable {
        public var appClipDomainCacheStatus: AppClipDomainCacheStatus?
        public var appClipDomainDebugStatus: AppClipDomainDebugStatus?
        public var betaAppClipInvocations: BetaAppClipInvocations?
        public var buildBundleFileSizes: BuildBundleFileSizes?

        public struct AppClipDomainCacheStatus: Codable, Equatable, Sendable {
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
                    case appClipDomainStatuses
                }

                public init(type: `Type` = .appClipDomainStatuses, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public struct AppClipDomainDebugStatus: Codable, Equatable, Sendable {
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
                    case appClipDomainStatuses
                }

                public init(type: `Type` = .appClipDomainStatuses, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public struct BetaAppClipInvocations: Codable, Equatable, Sendable {
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
                    case betaAppClipInvocations
                }

                public init(type: `Type` = .betaAppClipInvocations, id: String) {
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

        public struct BuildBundleFileSizes: Codable, Equatable, Sendable {
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
                    case buildBundleFileSizes
                }

                public init(type: `Type` = .buildBundleFileSizes, id: String) {
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

        public init(appClipDomainCacheStatus: AppClipDomainCacheStatus? = nil, appClipDomainDebugStatus: AppClipDomainDebugStatus? = nil, betaAppClipInvocations: BetaAppClipInvocations? = nil, buildBundleFileSizes: BuildBundleFileSizes? = nil) {
            self.appClipDomainCacheStatus = appClipDomainCacheStatus
            self.appClipDomainDebugStatus = appClipDomainDebugStatus
            self.betaAppClipInvocations = betaAppClipInvocations
            self.buildBundleFileSizes = buildBundleFileSizes
        }
    }

    public init(type: `Type` = .buildBundles, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
