// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppStoreVersionExperimentTreatmentLocalizationCreateRequest: Codable, Equatable {
    public var data: Data

    public struct Data: Codable, Equatable {
        public var type: `Type`
        public var attributes: Attributes
        public var relationships: Relationships

        public enum `Type`: String, Codable, CaseIterable {
            case appStoreVersionExperimentTreatmentLocalizations
        }

        public struct Attributes: Codable, Equatable {
            public var locale: String

            public init(locale: String) {
                self.locale = locale
            }
        }

        public struct Relationships: Codable, Equatable {
            public var appStoreVersionExperimentTreatment: AppStoreVersionExperimentTreatment

            public struct AppStoreVersionExperimentTreatment: Codable, Equatable {
                public var data: Data

                public struct Data: Codable, Equatable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case appStoreVersionExperimentTreatments
                    }

                    public init(type: `Type` = .appStoreVersionExperimentTreatments, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data) {
                    self.data = data
                }
            }

            public init(appStoreVersionExperimentTreatment: AppStoreVersionExperimentTreatment) {
                self.appStoreVersionExperimentTreatment = appStoreVersionExperimentTreatment
            }
        }

        public init(type: `Type` = .appStoreVersionExperimentTreatmentLocalizations, attributes: Attributes, relationships: Relationships) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
