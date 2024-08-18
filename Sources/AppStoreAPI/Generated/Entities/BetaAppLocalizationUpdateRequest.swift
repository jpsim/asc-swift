// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct BetaAppLocalizationUpdateRequest: Codable, Equatable, Sendable {
    public var data: Data

    public struct Data: Codable, Equatable, Identifiable, Sendable {
        public var type: `Type`
        public var id: String
        public var attributes: Attributes?

        public enum `Type`: String, CaseIterable, Codable, Sendable {
            case betaAppLocalizations
        }

        public struct Attributes: Codable, Equatable, Sendable {
            public var feedbackEmail: String?
            public var marketingURL: String?
            public var privacyPolicyURL: String?
            public var tvOsPrivacyPolicy: String?
            public var description: String?

            public init(feedbackEmail: String? = nil, marketingURL: String? = nil, privacyPolicyURL: String? = nil, tvOsPrivacyPolicy: String? = nil, description: String? = nil) {
                self.feedbackEmail = feedbackEmail
                self.marketingURL = marketingURL
                self.privacyPolicyURL = privacyPolicyURL
                self.tvOsPrivacyPolicy = tvOsPrivacyPolicy
                self.description = description
            }

            private enum CodingKeys: String, CodingKey {
                case feedbackEmail
                case marketingURL = "marketingUrl"
                case privacyPolicyURL = "privacyPolicyUrl"
                case tvOsPrivacyPolicy
                case description
            }
        }

        public init(type: `Type` = .betaAppLocalizations, id: String, attributes: Attributes? = nil) {
            self.type = type
            self.id = id
            self.attributes = attributes
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
