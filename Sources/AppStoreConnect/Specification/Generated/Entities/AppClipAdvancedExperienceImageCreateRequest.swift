// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation

public struct AppClipAdvancedExperienceImageCreateRequest: Codable, Hashable {
    public var data: Data

    public struct Data: Codable, Hashable {
        public var type: `Type`
        public var attributes: Attributes

        public enum `Type`: String, Codable, CaseIterable {
            case appClipAdvancedExperienceImages
        }

        public struct Attributes: Codable, Hashable {
            public var fileSize: Int
            public var fileName: String

            public init(fileSize: Int, fileName: String) {
                self.fileSize = fileSize
                self.fileName = fileName
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
