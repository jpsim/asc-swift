// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

@available(*, deprecated, message: "Deprecated")
public struct AppPreOrderUpdateRequest: Codable, Hashable {
    public var data: Data

    public struct Data: Codable, Hashable, Identifiable {
        public var type: `Type`
        public var id: String
        public var attributes: Attributes?

        public enum `Type`: String, Codable, CaseIterable {
            case appPreOrders
        }

        public struct Attributes: Codable, Hashable {
            public var appReleaseDate: String?

            public init(appReleaseDate: String? = nil) {
                self.appReleaseDate = appReleaseDate
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
