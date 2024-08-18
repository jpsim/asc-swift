// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct CiBuildAction: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks?

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case ciBuildActions
    }

    public struct Attributes: Codable, Equatable, Sendable {
        public var name: String?
        public var actionType: CiActionType?
        public var startedDate: Date?
        public var finishedDate: Date?
        public var issueCounts: CiIssueCounts?
        public var executionProgress: CiExecutionProgress?
        public var completionStatus: CiCompletionStatus?
        public var isRequiredToPass: Bool?

        public init(name: String? = nil, actionType: CiActionType? = nil, startedDate: Date? = nil, finishedDate: Date? = nil, issueCounts: CiIssueCounts? = nil, executionProgress: CiExecutionProgress? = nil, completionStatus: CiCompletionStatus? = nil, isRequiredToPass: Bool? = nil) {
            self.name = name
            self.actionType = actionType
            self.startedDate = startedDate
            self.finishedDate = finishedDate
            self.issueCounts = issueCounts
            self.executionProgress = executionProgress
            self.completionStatus = completionStatus
            self.isRequiredToPass = isRequiredToPass
        }
    }

    public struct Relationships: Codable, Equatable, Sendable {
        public var buildRun: BuildRun?

        public struct BuildRun: Codable, Equatable, Sendable {
            public var links: Links?
            public var data: Data?

            public struct Links: Codable, Equatable, Sendable {
                public var this: URL?
                public var related: URL?

                public init(this: URL? = nil, related: URL? = nil) {
                    self.this = this
                    self.related = related
                }

                private enum CodingKeys: String, CodingKey {
                    case this = "self"
                    case related
                }
            }

            public struct Data: Codable, Equatable, Identifiable, Sendable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, CaseIterable, Codable, Sendable {
                    case ciBuildRuns
                }

                public init(type: `Type` = .ciBuildRuns, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public init(buildRun: BuildRun? = nil) {
            self.buildRun = buildRun
        }
    }

    public init(type: `Type` = .ciBuildActions, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
