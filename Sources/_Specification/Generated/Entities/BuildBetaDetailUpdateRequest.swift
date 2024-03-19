// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct BuildBetaDetailUpdateRequest: Codable, Equatable {
    public var data: Data

    public struct Data: Codable, Equatable, Identifiable {
        public var type: `Type`
        public var id: String
        public var attributes: Attributes?

        public enum `Type`: String, Codable, CaseIterable {
            case buildBetaDetails
        }

        public struct Attributes: Codable, Equatable {
            public var isAutoNotifyEnabled: Bool?

            public init(isAutoNotifyEnabled: Bool? = nil) {
                self.isAutoNotifyEnabled = isAutoNotifyEnabled
            }

            private enum CodingKeys: String, CodingKey {
                case isAutoNotifyEnabled = "autoNotifyEnabled"
            }
        }

        public init(type: `Type` = .buildBetaDetails, id: String, attributes: Attributes? = nil) {
            self.type = type
            self.id = id
            self.attributes = attributes
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
