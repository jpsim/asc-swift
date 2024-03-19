// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct BuildBetaDetail: Codable, Equatable, Identifiable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks?

    public enum `Type`: String, Codable, CaseIterable {
        case buildBetaDetails
    }

    public struct Attributes: Codable, Equatable {
        public var isAutoNotifyEnabled: Bool?
        public var internalBuildState: InternalBetaState?
        public var externalBuildState: ExternalBetaState?

        public init(isAutoNotifyEnabled: Bool? = nil, internalBuildState: InternalBetaState? = nil, externalBuildState: ExternalBetaState? = nil) {
            self.isAutoNotifyEnabled = isAutoNotifyEnabled
            self.internalBuildState = internalBuildState
            self.externalBuildState = externalBuildState
        }

        private enum CodingKeys: String, CodingKey {
            case isAutoNotifyEnabled = "autoNotifyEnabled"
            case internalBuildState
            case externalBuildState
        }
    }

    public struct Relationships: Codable, Equatable {
        public var build: Build?

        public struct Build: Codable, Equatable {
            public var links: Links?
            public var data: Data?

            public struct Links: Codable, Equatable {
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

            public struct Data: Codable, Equatable, Identifiable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, Codable, CaseIterable {
                    case builds
                }

                public init(type: `Type` = .builds, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public init(build: Build? = nil) {
            self.build = build
        }
    }

    public init(type: `Type` = .buildBetaDetails, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
