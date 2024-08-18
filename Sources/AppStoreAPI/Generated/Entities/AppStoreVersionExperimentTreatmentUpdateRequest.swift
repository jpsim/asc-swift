// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AppStoreVersionExperimentTreatmentUpdateRequest: Codable, Equatable, Sendable {
    public var data: Data

    public struct Data: Codable, Equatable, Identifiable, Sendable {
        public var type: `Type`
        public var id: String
        public var attributes: Attributes?

        public enum `Type`: String, CaseIterable, Codable, Sendable {
            case appStoreVersionExperimentTreatments
        }

        public struct Attributes: Codable, Equatable, Sendable {
            public var name: String?
            public var appIconName: String?

            public init(name: String? = nil, appIconName: String? = nil) {
                self.name = name
                self.appIconName = appIconName
            }
        }

        public init(type: `Type` = .appStoreVersionExperimentTreatments, id: String, attributes: Attributes? = nil) {
            self.type = type
            self.id = id
            self.attributes = attributes
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
