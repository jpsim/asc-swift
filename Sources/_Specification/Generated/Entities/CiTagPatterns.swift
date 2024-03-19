// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct CiTagPatterns: Codable, Equatable, Sendable {
    public var isAllMatch: Bool?
    public var patterns: [Pattern]?

    public struct Pattern: Codable, Equatable, Sendable {
        public var pattern: String?
        public var isPrefix: Bool?

        public init(pattern: String? = nil, isPrefix: Bool? = nil) {
            self.pattern = pattern
            self.isPrefix = isPrefix
        }
    }

    public init(isAllMatch: Bool? = nil, patterns: [Pattern]? = nil) {
        self.isAllMatch = isAllMatch
        self.patterns = patterns
    }
}
