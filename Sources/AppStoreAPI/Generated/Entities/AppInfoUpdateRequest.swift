// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AppInfoUpdateRequest: Codable, Equatable, Sendable {
    public var data: Data

    public struct Data: Codable, Equatable, Identifiable, Sendable {
        public var type: `Type`
        public var id: String
        public var relationships: Relationships?

        public enum `Type`: String, CaseIterable, Codable, Sendable {
            case appInfos
        }

        public struct Relationships: Codable, Equatable, Sendable {
            public var primaryCategory: PrimaryCategory?
            public var primarySubcategoryOne: PrimarySubcategoryOne?
            public var primarySubcategoryTwo: PrimarySubcategoryTwo?
            public var secondaryCategory: SecondaryCategory?
            public var secondarySubcategoryOne: SecondarySubcategoryOne?
            public var secondarySubcategoryTwo: SecondarySubcategoryTwo?

            public struct PrimaryCategory: Codable, Equatable, Sendable {
                public var data: Data?

                public struct Data: Codable, Equatable, Identifiable, Sendable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, CaseIterable, Codable, Sendable {
                        case appCategories
                    }

                    public init(type: `Type` = .appCategories, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data? = nil) {
                    self.data = data
                }
            }

            public struct PrimarySubcategoryOne: Codable, Equatable, Sendable {
                public var data: Data?

                public struct Data: Codable, Equatable, Identifiable, Sendable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, CaseIterable, Codable, Sendable {
                        case appCategories
                    }

                    public init(type: `Type` = .appCategories, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data? = nil) {
                    self.data = data
                }
            }

            public struct PrimarySubcategoryTwo: Codable, Equatable, Sendable {
                public var data: Data?

                public struct Data: Codable, Equatable, Identifiable, Sendable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, CaseIterable, Codable, Sendable {
                        case appCategories
                    }

                    public init(type: `Type` = .appCategories, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data? = nil) {
                    self.data = data
                }
            }

            public struct SecondaryCategory: Codable, Equatable, Sendable {
                public var data: Data?

                public struct Data: Codable, Equatable, Identifiable, Sendable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, CaseIterable, Codable, Sendable {
                        case appCategories
                    }

                    public init(type: `Type` = .appCategories, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data? = nil) {
                    self.data = data
                }
            }

            public struct SecondarySubcategoryOne: Codable, Equatable, Sendable {
                public var data: Data?

                public struct Data: Codable, Equatable, Identifiable, Sendable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, CaseIterable, Codable, Sendable {
                        case appCategories
                    }

                    public init(type: `Type` = .appCategories, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data? = nil) {
                    self.data = data
                }
            }

            public struct SecondarySubcategoryTwo: Codable, Equatable, Sendable {
                public var data: Data?

                public struct Data: Codable, Equatable, Identifiable, Sendable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, CaseIterable, Codable, Sendable {
                        case appCategories
                    }

                    public init(type: `Type` = .appCategories, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data? = nil) {
                    self.data = data
                }
            }

            public init(primaryCategory: PrimaryCategory? = nil, primarySubcategoryOne: PrimarySubcategoryOne? = nil, primarySubcategoryTwo: PrimarySubcategoryTwo? = nil, secondaryCategory: SecondaryCategory? = nil, secondarySubcategoryOne: SecondarySubcategoryOne? = nil, secondarySubcategoryTwo: SecondarySubcategoryTwo? = nil) {
                self.primaryCategory = primaryCategory
                self.primarySubcategoryOne = primarySubcategoryOne
                self.primarySubcategoryTwo = primarySubcategoryTwo
                self.secondaryCategory = secondaryCategory
                self.secondarySubcategoryOne = secondarySubcategoryOne
                self.secondarySubcategoryTwo = secondarySubcategoryTwo
            }
        }

        public init(type: `Type` = .appInfos, id: String, relationships: Relationships? = nil) {
            self.type = type
            self.id = id
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
