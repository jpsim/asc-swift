// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct SubscriptionOfferCodeOneTimeUseCodeUpdateRequest: Codable, Equatable, Sendable {
    public var data: Data

    public struct Data: Codable, Equatable, Identifiable, Sendable {
        public var type: `Type`
        public var id: String
        public var attributes: Attributes?

        public enum `Type`: String, CaseIterable, Codable, Sendable {
            case subscriptionOfferCodeOneTimeUseCodes
        }

        public struct Attributes: Codable, Equatable, Sendable {
            public var isActive: Bool?

            public init(isActive: Bool? = nil) {
                self.isActive = isActive
            }

            private enum CodingKeys: String, CodingKey {
                case isActive = "active"
            }
        }

        public init(type: `Type` = .subscriptionOfferCodeOneTimeUseCodes, id: String, attributes: Attributes? = nil) {
            self.type = type
            self.id = id
            self.attributes = attributes
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
