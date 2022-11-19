// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation

public struct SubscriptionOfferCodeUpdateRequest: Codable, Hashable {
    public var data: Data

    public struct Data: Codable, Hashable, Identifiable {
        public var type: `Type`
        public var id: String
        public var attributes: Attributes?

        public enum `Type`: String, Codable, CaseIterable {
            case subscriptionOfferCodes
        }

        public struct Attributes: Codable, Hashable {
            public var isActive: Bool?

            public init(isActive: Bool? = nil) {
                self.isActive = isActive
            }

            private enum CodingKeys: String, CodingKey {
                case isActive = "active"
            }
        }

        public init(type: `Type`, id: String, attributes: Attributes? = nil) {
            self.type = type
            self.id = id
            self.attributes = attributes
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
