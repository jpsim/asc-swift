// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation

public struct AppStoreVersionExperimentTreatmentCreateRequest: Codable, Hashable {
    public var data: Data

    public struct Data: Codable, Hashable {
        public var type: `Type`
        public var attributes: Attributes
        public var relationships: Relationships

        public enum `Type`: String, Codable, CaseIterable {
            case appStoreVersionExperimentTreatments
        }

        public struct Attributes: Codable, Hashable {
            public var name: String
            public var appIconName: String?

            public init(name: String, appIconName: String? = nil) {
                self.name = name
                self.appIconName = appIconName
            }
        }

        public struct Relationships: Codable, Hashable {
            public var appStoreVersionExperiment: AppStoreVersionExperiment

            public struct AppStoreVersionExperiment: Codable, Hashable {
                public var data: Data

                public struct Data: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case appStoreVersionExperiments
                    }

                    public init(type: `Type`, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data) {
                    self.data = data
                }
            }

            public init(appStoreVersionExperiment: AppStoreVersionExperiment) {
                self.appStoreVersionExperiment = appStoreVersionExperiment
            }
        }

        public init(type: `Type`, attributes: Attributes, relationships: Relationships) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
