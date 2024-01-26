// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct DiagnosticLogCallStackNode: Codable, Equatable {
    public var sampleCount: Int?
    public var isBlameFrame: Bool?
    public var symbolName: String?
    public var insightsCategory: String?
    public var offsetIntoSymbol: String?
    public var binaryName: String?
    public var fileName: String?
    public var binaryUUID: String?
    public var lineNumber: String?
    public var address: String?
    public var offsetIntoBinaryTextSegment: String?
    public var rawFrame: String?
    public var subFrames: [DiagnosticLogCallStackNode]?

    public init(sampleCount: Int? = nil, isBlameFrame: Bool? = nil, symbolName: String? = nil, insightsCategory: String? = nil, offsetIntoSymbol: String? = nil, binaryName: String? = nil, fileName: String? = nil, binaryUUID: String? = nil, lineNumber: String? = nil, address: String? = nil, offsetIntoBinaryTextSegment: String? = nil, rawFrame: String? = nil, subFrames: [DiagnosticLogCallStackNode]? = nil) {
        self.sampleCount = sampleCount
        self.isBlameFrame = isBlameFrame
        self.symbolName = symbolName
        self.insightsCategory = insightsCategory
        self.offsetIntoSymbol = offsetIntoSymbol
        self.binaryName = binaryName
        self.fileName = fileName
        self.binaryUUID = binaryUUID
        self.lineNumber = lineNumber
        self.address = address
        self.offsetIntoBinaryTextSegment = offsetIntoBinaryTextSegment
        self.rawFrame = rawFrame
        self.subFrames = subFrames
    }
}
