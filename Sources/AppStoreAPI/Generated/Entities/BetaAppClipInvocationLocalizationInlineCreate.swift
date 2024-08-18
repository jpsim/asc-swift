// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct BetaAppClipInvocationLocalizationInlineCreate: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String?
    public var attributes: Attributes
    public var relationships: Relationships?

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case betaAppClipInvocationLocalizations
    }

    public struct Attributes: Codable, Equatable, Sendable {
        public var title: String
        public var locale: String

        public init(title: String, locale: String) {
            self.title = title
            self.locale = locale
        }
    }

    public struct Relationships: Codable, Equatable, Sendable {
        public var betaAppClipInvocation: BetaAppClipInvocation?

        public struct BetaAppClipInvocation: Codable, Equatable, Sendable {
            public var data: Data?

            public struct Data: Codable, Equatable, Identifiable, Sendable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, CaseIterable, Codable, Sendable {
                    case betaAppClipInvocations
                }

                public init(type: `Type` = .betaAppClipInvocations, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(data: Data? = nil) {
                self.data = data
            }
        }

        public init(betaAppClipInvocation: BetaAppClipInvocation? = nil) {
            self.betaAppClipInvocation = betaAppClipInvocation
        }
    }

    public init(type: `Type` = .betaAppClipInvocationLocalizations, id: String? = nil, attributes: Attributes, relationships: Relationships? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
    }
}
