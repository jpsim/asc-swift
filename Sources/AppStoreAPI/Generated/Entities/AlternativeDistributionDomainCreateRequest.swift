// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AlternativeDistributionDomainCreateRequest: Codable, Equatable, Sendable {
    public var data: Data

    public struct Data: Codable, Equatable, Sendable {
        public var type: `Type`
        public var attributes: Attributes

        public enum `Type`: String, CaseIterable, Codable, Sendable {
            case alternativeDistributionDomains
        }

        public struct Attributes: Codable, Equatable, Sendable {
            public var domain: String
            public var referenceName: String

            public init(domain: String, referenceName: String) {
                self.domain = domain
                self.referenceName = referenceName
            }
        }

        public init(type: `Type` = .alternativeDistributionDomains, attributes: Attributes) {
            self.type = type
            self.attributes = attributes
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
