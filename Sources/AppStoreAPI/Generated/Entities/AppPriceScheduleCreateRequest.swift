// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AppPriceScheduleCreateRequest: Codable, Equatable, Sendable {
    public var data: Data
    public var included: [IncludedItem]?

    public struct Data: Codable, Equatable, Sendable {
        public var type: `Type`
        public var relationships: Relationships

        public enum `Type`: String, CaseIterable, Codable, Sendable {
            case appPriceSchedules
        }

        public struct Relationships: Codable, Equatable, Sendable {
            public var app: App
            public var baseTerritory: BaseTerritory
            public var manualPrices: ManualPrices

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

            public struct BaseTerritory: Codable, Equatable, Sendable {
                public var data: Data

                public struct Data: Codable, Equatable, Identifiable, Sendable {
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

                public init(data: Data) {
                    self.data = data
                }
            }

            public struct ManualPrices: Codable, Equatable, Sendable {
                public var data: [Datum]

                public struct Datum: Codable, Equatable, Identifiable, Sendable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, CaseIterable, Codable, Sendable {
                        case appPrices
                    }

                    public init(type: `Type` = .appPrices, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: [Datum]) {
                    self.data = data
                }
            }

            public init(app: App, baseTerritory: BaseTerritory, manualPrices: ManualPrices) {
                self.app = app
                self.baseTerritory = baseTerritory
                self.manualPrices = manualPrices
            }
        }

        public init(type: `Type` = .appPriceSchedules, relationships: Relationships) {
            self.type = type
            self.relationships = relationships
        }
    }

    public enum IncludedItem: Codable, Equatable, Sendable {
        case appPriceV2InlineCreate(AppPriceV2InlineCreate)
        case territoryInlineCreate(TerritoryInlineCreate)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(AppPriceV2InlineCreate.self) {
                self = .appPriceV2InlineCreate(value)
            } else if let value = try? container.decode(TerritoryInlineCreate.self) {
                self = .territoryInlineCreate(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (AppPriceV2InlineCreate, TerritoryInlineCreate)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .appPriceV2InlineCreate(let value): try container.encode(value)
            case .territoryInlineCreate(let value): try container.encode(value)
            }
        }
    }

    public init(data: Data, included: [IncludedItem]? = nil) {
        self.data = data
        self.included = included
    }
}
