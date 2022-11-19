// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation

public enum InternalBetaState: String, Codable, CaseIterable {
    case processing = "PROCESSING"
    case processingException = "PROCESSING_EXCEPTION"
    case missingExportCompliance = "MISSING_EXPORT_COMPLIANCE"
    case readyForBetaTesting = "READY_FOR_BETA_TESTING"
    case inBetaTesting = "IN_BETA_TESTING"
    case expired = "EXPIRED"
    case inExportComplianceReview = "IN_EXPORT_COMPLIANCE_REVIEW"
}
