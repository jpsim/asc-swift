// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation

public struct BetaAppReviewDetailUpdateRequest: Codable, Hashable {
    public var data: Data

    public struct Data: Codable, Hashable, Identifiable {
        public var type: `Type`
        public var id: String
        public var attributes: Attributes?

        public enum `Type`: String, Codable, CaseIterable {
            case betaAppReviewDetails
        }

        public struct Attributes: Codable, Hashable {
            public var contactFirstName: String?
            public var contactLastName: String?
            public var contactPhone: String?
            public var contactEmail: String?
            public var demoAccountName: String?
            public var demoAccountPassword: String?
            public var isDemoAccountRequired: Bool?
            public var notes: String?

            public init(contactFirstName: String? = nil, contactLastName: String? = nil, contactPhone: String? = nil, contactEmail: String? = nil, demoAccountName: String? = nil, demoAccountPassword: String? = nil, isDemoAccountRequired: Bool? = nil, notes: String? = nil) {
                self.contactFirstName = contactFirstName
                self.contactLastName = contactLastName
                self.contactPhone = contactPhone
                self.contactEmail = contactEmail
                self.demoAccountName = demoAccountName
                self.demoAccountPassword = demoAccountPassword
                self.isDemoAccountRequired = isDemoAccountRequired
                self.notes = notes
            }

            private enum CodingKeys: String, CodingKey {
                case contactFirstName
                case contactLastName
                case contactPhone
                case contactEmail
                case demoAccountName
                case demoAccountPassword
                case isDemoAccountRequired = "demoAccountRequired"
                case notes
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
