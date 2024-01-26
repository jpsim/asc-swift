// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct EndAppAvailabilityPreOrderCreateRequest: Codable, Equatable {
    public var data: Data

    public struct Data: Codable, Equatable {
        public var type: `Type`
        public var relationships: Relationships

        public enum `Type`: String, Codable, CaseIterable {
            case endAppAvailabilityPreOrders
        }

        public struct Relationships: Codable, Equatable {
            public var territoryAvailabilities: TerritoryAvailabilities

            public struct TerritoryAvailabilities: Codable, Equatable {
                public var data: [Datum]

                public struct Datum: Codable, Equatable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case territoryAvailabilities
                    }

                    public init(type: `Type`, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: [Datum]) {
                    self.data = data
                }
            }

            public init(territoryAvailabilities: TerritoryAvailabilities) {
                self.territoryAvailabilities = territoryAvailabilities
            }
        }

        public init(type: `Type`, relationships: Relationships) {
            self.type = type
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
