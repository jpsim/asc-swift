// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct GameCenterMatchmakingQueueSizesV1MetricResponse: Codable, Equatable {
    public var data: [Datum]
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public struct Datum: Codable, Equatable {
        public var dataPoints: DataPoints?
        public var granularity: Granularity?

        public struct DataPoints: Codable, Equatable {
            public var start: Date?
            public var end: Date?
            public var values: Values?

            public struct Values: Codable, Equatable {
                public var count: Int?
                public var averageNumberOfRequests: Double?
                public var p50NumberOfRequests: Double?
                public var p95NumberOfRequests: Double?

                public init(count: Int? = nil, averageNumberOfRequests: Double? = nil, p50NumberOfRequests: Double? = nil, p95NumberOfRequests: Double? = nil) {
                    self.count = count
                    self.averageNumberOfRequests = averageNumberOfRequests
                    self.p50NumberOfRequests = p50NumberOfRequests
                    self.p95NumberOfRequests = p95NumberOfRequests
                }
            }

            public init(start: Date? = nil, end: Date? = nil, values: Values? = nil) {
                self.start = start
                self.end = end
                self.values = values
            }
        }

        public enum Granularity: String, Codable, CaseIterable {
            case p1d = "P1D"
            case pt1h = "PT1H"
            case pt15m = "PT15M"
        }

        public init(dataPoints: DataPoints? = nil, granularity: Granularity? = nil) {
            self.dataPoints = dataPoints
            self.granularity = granularity
        }
    }

    public init(data: [Datum], links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.links = links
        self.meta = meta
    }
}
