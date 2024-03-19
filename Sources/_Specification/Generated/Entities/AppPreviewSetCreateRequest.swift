// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppPreviewSetCreateRequest: Codable, Equatable {
    public var data: Data

    public struct Data: Codable, Equatable {
        public var type: `Type`
        public var attributes: Attributes
        public var relationships: Relationships?

        public enum `Type`: String, Codable, CaseIterable {
            case appPreviewSets
        }

        public struct Attributes: Codable, Equatable {
            public var previewType: PreviewType

            public init(previewType: PreviewType) {
                self.previewType = previewType
            }
        }

        public struct Relationships: Codable, Equatable {
            public var appStoreVersionLocalization: AppStoreVersionLocalization?
            public var appCustomProductPageLocalization: AppCustomProductPageLocalization?
            public var appStoreVersionExperimentTreatmentLocalization: AppStoreVersionExperimentTreatmentLocalization?

            public struct AppStoreVersionLocalization: Codable, Equatable {
                public var data: Data?

                public struct Data: Codable, Equatable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case appStoreVersionLocalizations
                    }

                    public init(type: `Type` = .appStoreVersionLocalizations, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data? = nil) {
                    self.data = data
                }
            }

            public struct AppCustomProductPageLocalization: Codable, Equatable {
                public var data: Data?

                public struct Data: Codable, Equatable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case appCustomProductPageLocalizations
                    }

                    public init(type: `Type` = .appCustomProductPageLocalizations, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data? = nil) {
                    self.data = data
                }
            }

            public struct AppStoreVersionExperimentTreatmentLocalization: Codable, Equatable {
                public var data: Data?

                public struct Data: Codable, Equatable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case appStoreVersionExperimentTreatmentLocalizations
                    }

                    public init(type: `Type` = .appStoreVersionExperimentTreatmentLocalizations, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data? = nil) {
                    self.data = data
                }
            }

            public init(appStoreVersionLocalization: AppStoreVersionLocalization? = nil, appCustomProductPageLocalization: AppCustomProductPageLocalization? = nil, appStoreVersionExperimentTreatmentLocalization: AppStoreVersionExperimentTreatmentLocalization? = nil) {
                self.appStoreVersionLocalization = appStoreVersionLocalization
                self.appCustomProductPageLocalization = appCustomProductPageLocalization
                self.appStoreVersionExperimentTreatmentLocalization = appStoreVersionExperimentTreatmentLocalization
            }
        }

        public init(type: `Type` = .appPreviewSets, attributes: Attributes, relationships: Relationships? = nil) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
