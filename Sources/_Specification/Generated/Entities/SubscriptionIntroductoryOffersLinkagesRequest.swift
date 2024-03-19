// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct SubscriptionIntroductoryOffersLinkagesRequest: Codable, Equatable, Sendable {
    public var data: [Datum]

    public struct Datum: Codable, Equatable, Identifiable, Sendable {
        public var type: `Type`
        public var id: String

        public enum `Type`: String, CaseIterable, Codable, Sendable {
            case subscriptionIntroductoryOffers
        }

        public init(type: `Type` = .subscriptionIntroductoryOffers, id: String) {
            self.type = type
            self.id = id
        }
    }

    public init(data: [Datum]) {
        self.data = data
    }
}
