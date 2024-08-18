// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct BetaTesterCreateRequest: Codable, Equatable, Sendable {
    public var data: Data

    public struct Data: Codable, Equatable, Sendable {
        public var type: `Type`
        public var attributes: Attributes
        public var relationships: Relationships?

        public enum `Type`: String, CaseIterable, Codable, Sendable {
            case betaTesters
        }

        public struct Attributes: Codable, Equatable, Sendable {
            public var firstName: String?
            public var lastName: String?
            public var email: String

            public init(firstName: String? = nil, lastName: String? = nil, email: String) {
                self.firstName = firstName
                self.lastName = lastName
                self.email = email
            }
        }

        public struct Relationships: Codable, Equatable, Sendable {
            public var betaGroups: BetaGroups?
            public var builds: Builds?

            public struct BetaGroups: Codable, Equatable, Sendable {
                public var data: [Datum]?

                public struct Datum: Codable, Equatable, Identifiable, Sendable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, CaseIterable, Codable, Sendable {
                        case betaGroups
                    }

                    public init(type: `Type` = .betaGroups, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: [Datum]? = nil) {
                    self.data = data
                }
            }

            public struct Builds: Codable, Equatable, Sendable {
                public var data: [Datum]?

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

                public init(data: [Datum]? = nil) {
                    self.data = data
                }
            }

            public init(betaGroups: BetaGroups? = nil, builds: Builds? = nil) {
                self.betaGroups = betaGroups
                self.builds = builds
            }
        }

        public init(type: `Type` = .betaTesters, attributes: Attributes, relationships: Relationships? = nil) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
