// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct ReviewSubmissionUpdateRequest: Codable, Equatable {
    public var data: Data

    public struct Data: Codable, Equatable, Identifiable {
        public var type: `Type`
        public var id: String
        public var attributes: Attributes?

        public enum `Type`: String, Codable, CaseIterable {
            case reviewSubmissions
        }

        public struct Attributes: Codable, Equatable {
            public var isSubmitted: Bool?
            public var isCanceled: Bool?

            public init(isSubmitted: Bool? = nil, isCanceled: Bool? = nil) {
                self.isSubmitted = isSubmitted
                self.isCanceled = isCanceled
            }

            private enum CodingKeys: String, CodingKey {
                case isSubmitted = "submitted"
                case isCanceled = "canceled"
            }
        }

        public init(type: `Type` = .reviewSubmissions, id: String, attributes: Attributes? = nil) {
            self.type = type
            self.id = id
            self.attributes = attributes
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
