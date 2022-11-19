// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation

public struct BundleIDCreateRequest: Codable, Hashable {
    public var data: Data

    public struct Data: Codable, Hashable {
        public var type: `Type`
        public var attributes: Attributes

        public enum `Type`: String, Codable, CaseIterable {
            case bundleIDs = "bundleIds"
        }

        public struct Attributes: Codable, Hashable {
            public var name: String
            public var platform: BundleIDPlatform
            public var identifier: String
            public var seedID: String?

            public init(name: String, platform: BundleIDPlatform, identifier: String, seedID: String? = nil) {
                self.name = name
                self.platform = platform
                self.identifier = identifier
                self.seedID = seedID
            }

            private enum CodingKeys: String, CodingKey {
                case name
                case platform
                case identifier
                case seedID = "seedId"
            }
        }

        public init(type: `Type`, attributes: Attributes) {
            self.type = type
            self.attributes = attributes
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
