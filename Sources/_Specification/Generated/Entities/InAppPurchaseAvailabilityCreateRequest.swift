// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct InAppPurchaseAvailabilityCreateRequest: Codable, Hashable {
    public var data: Data

    public struct Data: Codable, Hashable {
        public var type: `Type`
        public var attributes: Attributes
        public var relationships: Relationships

        public enum `Type`: String, Codable, CaseIterable {
            case inAppPurchaseAvailabilities
        }

        public struct Attributes: Codable, Hashable {
            public var isAvailableInNewTerritories: Bool

            public init(isAvailableInNewTerritories: Bool) {
                self.isAvailableInNewTerritories = isAvailableInNewTerritories
            }

            private enum CodingKeys: String, CodingKey {
                case isAvailableInNewTerritories = "availableInNewTerritories"
            }
        }

        public struct Relationships: Codable, Hashable {
            public var inAppPurchase: InAppPurchase
            public var availableTerritories: AvailableTerritories

            public struct InAppPurchase: Codable, Hashable {
                public var data: Data

                public struct Data: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case inAppPurchases
                    }

                    public init(type: `Type`, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data) {
                    self.data = data
                }
            }

            public struct AvailableTerritories: Codable, Hashable {
                public var data: [Datum]

                public struct Datum: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case territories
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

            public init(inAppPurchase: InAppPurchase, availableTerritories: AvailableTerritories) {
                self.inAppPurchase = inAppPurchase
                self.availableTerritories = availableTerritories
            }
        }

        public init(type: `Type`, attributes: Attributes, relationships: Relationships) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
