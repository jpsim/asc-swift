// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AppsBetaTesterUsagesV1MetricResponse: Codable, Equatable, Sendable {
    public var data: [Datum]
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?
    public var included: [BetaTester]?

    public struct Datum: Codable, Equatable, Sendable {
        public var dataPoints: DataPoints?
        public var dimensions: Dimensions?

        public struct DataPoints: Codable, Equatable, Sendable {
            public var start: Date?
            public var end: Date?
            public var values: Values?

            public struct Values: Codable, Equatable, Sendable {
                public var crashCount: Int?
                public var sessionCount: Int?
                public var feedbackCount: Int?

                public init(crashCount: Int? = nil, sessionCount: Int? = nil, feedbackCount: Int? = nil) {
                    self.crashCount = crashCount
                    self.sessionCount = sessionCount
                    self.feedbackCount = feedbackCount
                }
            }

            public init(start: Date? = nil, end: Date? = nil, values: Values? = nil) {
                self.start = start
                self.end = end
                self.values = values
            }
        }

        public struct Dimensions: Codable, Equatable, Sendable {
            public var betaTesters: BetaTesters?

            public struct BetaTesters: Codable, Equatable, Sendable {
                public var links: Links?

                public struct Links: Codable, Equatable, Sendable {
                    public var groupBy: URL?
                    public var related: URL?

                    public init(groupBy: URL? = nil, related: URL? = nil) {
                        self.groupBy = groupBy
                        self.related = related
                    }
                }

                public init(links: Links? = nil) {
                    self.links = links
                }
            }

            public init(betaTesters: BetaTesters? = nil) {
                self.betaTesters = betaTesters
            }
        }

        public init(dataPoints: DataPoints? = nil, dimensions: Dimensions? = nil) {
            self.dataPoints = dataPoints
            self.dimensions = dimensions
        }
    }

    public init(data: [Datum], links: PagedDocumentLinks, meta: PagingInformation? = nil, included: [BetaTester]? = nil) {
        self.data = data
        self.links = links
        self.meta = meta
        self.included = included
    }
}
