// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AppPreviewUpdateRequest: Codable, Equatable, Sendable {
    public var data: Data

    public struct Data: Codable, Equatable, Identifiable, Sendable {
        public var type: `Type`
        public var id: String
        public var attributes: Attributes?

        public enum `Type`: String, CaseIterable, Codable, Sendable {
            case appPreviews
        }

        public struct Attributes: Codable, Equatable, Sendable {
            public var sourceFileChecksum: String?
            public var previewFrameTimeCode: String?
            public var isUploaded: Bool?

            public init(sourceFileChecksum: String? = nil, previewFrameTimeCode: String? = nil, isUploaded: Bool? = nil) {
                self.sourceFileChecksum = sourceFileChecksum
                self.previewFrameTimeCode = previewFrameTimeCode
                self.isUploaded = isUploaded
            }

            private enum CodingKeys: String, CodingKey {
                case sourceFileChecksum
                case previewFrameTimeCode
                case isUploaded = "uploaded"
            }
        }

        public init(type: `Type` = .appPreviews, id: String, attributes: Attributes? = nil) {
            self.type = type
            self.id = id
            self.attributes = attributes
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
