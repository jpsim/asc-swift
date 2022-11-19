// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation

public struct ScmPullRequest: Codable, Hashable, Identifiable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks

    public enum `Type`: String, Codable, CaseIterable {
        case scmPullRequests
    }

    public struct Attributes: Codable, Hashable {
        public var title: String?
        public var number: Int?
        public var webURL: URL?
        public var sourceRepositoryOwner: String?
        public var sourceRepositoryName: String?
        public var sourceBranchName: String?
        public var destinationRepositoryOwner: String?
        public var destinationRepositoryName: String?
        public var destinationBranchName: String?
        public var isClosed: Bool?
        public var isCrossRepository: Bool?

        public init(title: String? = nil, number: Int? = nil, webURL: URL? = nil, sourceRepositoryOwner: String? = nil, sourceRepositoryName: String? = nil, sourceBranchName: String? = nil, destinationRepositoryOwner: String? = nil, destinationRepositoryName: String? = nil, destinationBranchName: String? = nil, isClosed: Bool? = nil, isCrossRepository: Bool? = nil) {
            self.title = title
            self.number = number
            self.webURL = webURL
            self.sourceRepositoryOwner = sourceRepositoryOwner
            self.sourceRepositoryName = sourceRepositoryName
            self.sourceBranchName = sourceBranchName
            self.destinationRepositoryOwner = destinationRepositoryOwner
            self.destinationRepositoryName = destinationRepositoryName
            self.destinationBranchName = destinationBranchName
            self.isClosed = isClosed
            self.isCrossRepository = isCrossRepository
        }

        private enum CodingKeys: String, CodingKey {
            case title
            case number
            case webURL = "webUrl"
            case sourceRepositoryOwner
            case sourceRepositoryName
            case sourceBranchName
            case destinationRepositoryOwner
            case destinationRepositoryName
            case destinationBranchName
            case isClosed
            case isCrossRepository
        }
    }

    public struct Relationships: Codable, Hashable {
        public var repository: Repository?

        public struct Repository: Codable, Hashable {
            public var links: Links?
            public var data: Data?

            public struct Links: Codable, Hashable {
                public var this: String?
                public var related: String?

                public init(this: String? = nil, related: String? = nil) {
                    self.this = this
                    self.related = related
                }

                private enum CodingKeys: String, CodingKey {
                    case this = "self"
                    case related
                }
            }

            public struct Data: Codable, Hashable, Identifiable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, Codable, CaseIterable {
                    case scmRepositories
                }

                public init(type: `Type`, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public init(repository: Repository? = nil) {
            self.repository = repository
        }
    }

    public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
