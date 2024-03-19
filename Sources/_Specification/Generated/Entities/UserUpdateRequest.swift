// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct UserUpdateRequest: Codable, Equatable {
    public var data: Data

    public struct Data: Codable, Equatable, Identifiable {
        public var type: `Type`
        public var id: String
        public var attributes: Attributes?
        public var relationships: Relationships?

        public enum `Type`: String, Codable, CaseIterable {
            case users
        }

        public struct Attributes: Codable, Equatable {
            public var roles: [UserRole]?
            public var isAllAppsVisible: Bool?
            public var isProvisioningAllowed: Bool?

            public init(roles: [UserRole]? = nil, isAllAppsVisible: Bool? = nil, isProvisioningAllowed: Bool? = nil) {
                self.roles = roles
                self.isAllAppsVisible = isAllAppsVisible
                self.isProvisioningAllowed = isProvisioningAllowed
            }

            private enum CodingKeys: String, CodingKey {
                case roles
                case isAllAppsVisible = "allAppsVisible"
                case isProvisioningAllowed = "provisioningAllowed"
            }
        }

        public struct Relationships: Codable, Equatable {
            public var visibleApps: VisibleApps?

            public struct VisibleApps: Codable, Equatable {
                public var data: [Datum]?

                public struct Datum: Codable, Equatable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case apps
                    }

                    public init(type: `Type` = .apps, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: [Datum]? = nil) {
                    self.data = data
                }
            }

            public init(visibleApps: VisibleApps? = nil) {
                self.visibleApps = visibleApps
            }
        }

        public init(type: `Type` = .users, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil) {
            self.type = type
            self.id = id
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
