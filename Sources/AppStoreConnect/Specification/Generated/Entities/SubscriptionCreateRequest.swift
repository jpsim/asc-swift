// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation

public struct SubscriptionCreateRequest: Codable, Hashable {
    public var data: Data

    public struct Data: Codable, Hashable {
        public var type: `Type`
        public var attributes: Attributes
        public var relationships: Relationships

        public enum `Type`: String, Codable, CaseIterable {
            case subscriptions
        }

        public struct Attributes: Codable, Hashable {
            public var name: String
            public var productID: String
            public var isFamilySharable: Bool?
            public var subscriptionPeriod: SubscriptionPeriod?
            public var reviewNote: String?
            public var groupLevel: Int?
            public var isAvailableInAllTerritories: Bool?

            public enum SubscriptionPeriod: String, Codable, CaseIterable {
                case oneWeek = "ONE_WEEK"
                case oneMonth = "ONE_MONTH"
                case twoMonths = "TWO_MONTHS"
                case threeMonths = "THREE_MONTHS"
                case sixMonths = "SIX_MONTHS"
                case oneYear = "ONE_YEAR"
            }

            public init(name: String, productID: String, isFamilySharable: Bool? = nil, subscriptionPeriod: SubscriptionPeriod? = nil, reviewNote: String? = nil, groupLevel: Int? = nil, isAvailableInAllTerritories: Bool? = nil) {
                self.name = name
                self.productID = productID
                self.isFamilySharable = isFamilySharable
                self.subscriptionPeriod = subscriptionPeriod
                self.reviewNote = reviewNote
                self.groupLevel = groupLevel
                self.isAvailableInAllTerritories = isAvailableInAllTerritories
            }

            private enum CodingKeys: String, CodingKey {
                case name
                case productID = "productId"
                case isFamilySharable = "familySharable"
                case subscriptionPeriod
                case reviewNote
                case groupLevel
                case isAvailableInAllTerritories = "availableInAllTerritories"
            }
        }

        public struct Relationships: Codable, Hashable {
            public var group: Group

            public struct Group: Codable, Hashable {
                public var data: Data

                public struct Data: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case subscriptionGroups
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

            public init(group: Group) {
                self.group = group
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
