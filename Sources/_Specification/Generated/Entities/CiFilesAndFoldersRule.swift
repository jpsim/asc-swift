// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct CiFilesAndFoldersRule: Codable, Equatable, Sendable {
    public var mode: Mode?
    public var matchers: [CiStartConditionFileMatcher]?

    public enum Mode: String, CaseIterable, Codable, Sendable {
        case startIfAnyFileMatches = "START_IF_ANY_FILE_MATCHES"
        case doNotStartIfAllFilesMatch = "DO_NOT_START_IF_ALL_FILES_MATCH"
    }

    public init(mode: Mode? = nil, matchers: [CiStartConditionFileMatcher]? = nil) {
        self.mode = mode
        self.matchers = matchers
    }
}
