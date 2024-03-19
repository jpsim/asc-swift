// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct RoutingAppCoverageCreateRequest: Codable, Equatable {
    public var data: Data

    public struct Data: Codable, Equatable {
        public var type: `Type`
        public var attributes: Attributes
        public var relationships: Relationships

        public enum `Type`: String, Codable, CaseIterable {
            case routingAppCoverages
        }

        public struct Attributes: Codable, Equatable {
            public var fileSize: Int
            public var fileName: String

            public init(fileSize: Int, fileName: String) {
                self.fileSize = fileSize
                self.fileName = fileName
            }
        }

        public struct Relationships: Codable, Equatable {
            public var appStoreVersion: AppStoreVersion

            public struct AppStoreVersion: Codable, Equatable {
                public var data: Data

                public struct Data: Codable, Equatable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case appStoreVersions
                    }

                    public init(type: `Type` = .appStoreVersions, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data) {
                    self.data = data
                }
            }

            public init(appStoreVersion: AppStoreVersion) {
                self.appStoreVersion = appStoreVersion
            }
        }

        public init(type: `Type` = .routingAppCoverages, attributes: Attributes, relationships: Relationships) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
