// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct DiagnosticLogs: Codable, Equatable, Sendable {
    public var productData: [ProductDatum]?
    public var version: String?

    public struct ProductDatum: Codable, Equatable, Sendable {
        public var signatureID: String?
        public var diagnosticInsights: [DiagnosticInsight]?
        public var diagnosticLogs: [DiagnosticLog]?

        public struct DiagnosticInsight: Codable, Equatable, Sendable {
            public var insightsURL: String?
            public var insightsCategory: String?
            public var insightsString: String?

            public init(insightsURL: String? = nil, insightsCategory: String? = nil, insightsString: String? = nil) {
                self.insightsURL = insightsURL
                self.insightsCategory = insightsCategory
                self.insightsString = insightsString
            }
        }

        public struct DiagnosticLog: Codable, Equatable, Sendable {
            public var callStackTree: [CallStackTreeItem]?
            public var diagnosticMetaData: DiagnosticMetaData?

            public struct CallStackTreeItem: Codable, Equatable, Sendable {
                public var isCallStackPerThread: Bool?
                public var callStacks: [CallStack]?

                public struct CallStack: Codable, Equatable, Sendable {
                    public var callStackRootFrames: [DiagnosticLogCallStackNode]?

                    public init(callStackRootFrames: [DiagnosticLogCallStackNode]? = nil) {
                        self.callStackRootFrames = callStackRootFrames
                    }
                }

                public init(isCallStackPerThread: Bool? = nil, callStacks: [CallStack]? = nil) {
                    self.isCallStackPerThread = isCallStackPerThread
                    self.callStacks = callStacks
                }

                private enum CodingKeys: String, CodingKey {
                    case isCallStackPerThread = "callStackPerThread"
                    case callStacks
                }
            }

            public struct DiagnosticMetaData: Codable, Equatable, Sendable {
                public var bundleID: String?
                public var event: String?
                public var osVersion: String?
                public var appVersion: String?
                public var writesCaused: String?
                public var deviceType: String?
                public var platformArchitecture: String?
                public var eventDetail: String?
                public var buildVersion: String?

                public init(bundleID: String? = nil, event: String? = nil, osVersion: String? = nil, appVersion: String? = nil, writesCaused: String? = nil, deviceType: String? = nil, platformArchitecture: String? = nil, eventDetail: String? = nil, buildVersion: String? = nil) {
                    self.bundleID = bundleID
                    self.event = event
                    self.osVersion = osVersion
                    self.appVersion = appVersion
                    self.writesCaused = writesCaused
                    self.deviceType = deviceType
                    self.platformArchitecture = platformArchitecture
                    self.eventDetail = eventDetail
                    self.buildVersion = buildVersion
                }

                private enum CodingKeys: String, CodingKey {
                    case bundleID = "bundleId"
                    case event
                    case osVersion
                    case appVersion
                    case writesCaused
                    case deviceType
                    case platformArchitecture
                    case eventDetail
                    case buildVersion
                }
            }

            public init(callStackTree: [CallStackTreeItem]? = nil, diagnosticMetaData: DiagnosticMetaData? = nil) {
                self.callStackTree = callStackTree
                self.diagnosticMetaData = diagnosticMetaData
            }
        }

        public init(signatureID: String? = nil, diagnosticInsights: [DiagnosticInsight]? = nil, diagnosticLogs: [DiagnosticLog]? = nil) {
            self.signatureID = signatureID
            self.diagnosticInsights = diagnosticInsights
            self.diagnosticLogs = diagnosticLogs
        }

        private enum CodingKeys: String, CodingKey {
            case signatureID = "signatureId"
            case diagnosticInsights
            case diagnosticLogs
        }
    }

    public init(productData: [ProductDatum]? = nil, version: String? = nil) {
        self.productData = productData
        self.version = version
    }
}
