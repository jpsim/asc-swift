// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppAvailabilityCreateRequest: Codable, Equatable, Sendable {
    public var data: Data

    public struct Data: Codable, Equatable, Sendable {
        public var type: `Type`
        public var attributes: Attributes
        public var relationships: Relationships

        public enum `Type`: String, CaseIterable, Codable, Sendable {
            case appAvailabilities
        }

        public struct Attributes: Codable, Equatable, Sendable {
            public var isAvailableInNewTerritories: Bool

            public init(isAvailableInNewTerritories: Bool) {
                self.isAvailableInNewTerritories = isAvailableInNewTerritories
            }

            private enum CodingKeys: String, CodingKey {
                case isAvailableInNewTerritories = "availableInNewTerritories"
            }
        }

        public struct Relationships: Codable, Equatable, Sendable {
            public var app: App
            public var availableTerritories: AvailableTerritories

            public struct App: Codable, Equatable, Sendable {
                public var data: Data

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

                public init(data: Data) {
                    self.data = data
                }
            }

            public struct AvailableTerritories: Codable, Equatable, Sendable {
                public var data: [Datum]

                public struct Datum: Codable, Equatable, Identifiable, Sendable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, CaseIterable, Codable, Sendable {
                        case territories
                    }

                    public init(type: `Type` = .territories, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: [Datum]) {
                    self.data = data
                }
            }

            public init(app: App, availableTerritories: AvailableTerritories) {
                self.app = app
                self.availableTerritories = availableTerritories
            }
        }

        public init(type: `Type` = .appAvailabilities, attributes: Attributes, relationships: Relationships) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
