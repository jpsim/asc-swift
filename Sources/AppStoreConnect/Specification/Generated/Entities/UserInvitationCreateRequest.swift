// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation

public struct UserInvitationCreateRequest: Codable, Hashable {
    public var data: Data

    public struct Data: Codable, Hashable {
        public var type: `Type`
        public var attributes: Attributes
        public var relationships: Relationships?

        public enum `Type`: String, Codable, CaseIterable {
            case userInvitations
        }

        public struct Attributes: Codable, Hashable {
            public var email: String
            public var firstName: String
            public var lastName: String
            public var roles: [UserRole]
            public var isAllAppsVisible: Bool?
            public var isProvisioningAllowed: Bool?

            public init(email: String, firstName: String, lastName: String, roles: [UserRole], isAllAppsVisible: Bool? = nil, isProvisioningAllowed: Bool? = nil) {
                self.email = email
                self.firstName = firstName
                self.lastName = lastName
                self.roles = roles
                self.isAllAppsVisible = isAllAppsVisible
                self.isProvisioningAllowed = isProvisioningAllowed
            }

            private enum CodingKeys: String, CodingKey {
                case email
                case firstName
                case lastName
                case roles
                case isAllAppsVisible = "allAppsVisible"
                case isProvisioningAllowed = "provisioningAllowed"
            }
        }

        public struct Relationships: Codable, Hashable {
            public var visibleApps: VisibleApps?

            public struct VisibleApps: Codable, Hashable {
                public var data: [Datum]?

                public struct Datum: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case apps
                    }

                    public init(type: `Type`, id: String) {
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

        public init(type: `Type`, attributes: Attributes, relationships: Relationships? = nil) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
