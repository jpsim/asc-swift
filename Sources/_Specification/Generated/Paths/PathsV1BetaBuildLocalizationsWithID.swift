// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.BetaBuildLocalizations {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/betaBuildLocalizations/{id}`
        public let path: String

        public func get(fieldsBetaBuildLocalizations: [FieldsBetaBuildLocalizations]? = nil, include: [Include]? = nil, fieldsBuilds: [FieldsBuilds]? = nil) -> Request<_Specification.BetaBuildLocalizationResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsBetaBuildLocalizations, include, fieldsBuilds), id: "betaBuildLocalizations-get_instance")
        }

        private func makeGetQuery(_ fieldsBetaBuildLocalizations: [FieldsBetaBuildLocalizations]?, _ include: [Include]?, _ fieldsBuilds: [FieldsBuilds]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsBetaBuildLocalizations, forKey: "fields[betaBuildLocalizations]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsBuilds, forKey: "fields[builds]")
            return encoder.items
        }

        public enum FieldsBetaBuildLocalizations: String, CaseIterable, Codable, Sendable {
            case build
            case locale
            case whatsNew
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case build
        }

        public enum FieldsBuilds: String, CaseIterable, Codable, Sendable {
            case app
            case appEncryptionDeclaration
            case appStoreVersion
            case betaAppReviewSubmission
            case betaBuildLocalizations
            case betaGroups
            case buildAudienceType
            case buildBetaDetail
            case buildBundles
            case computedMinMacOsVersion
            case diagnosticSignatures
            case expirationDate
            case expired
            case iconAssetToken
            case icons
            case individualTesters
            case lsMinimumSystemVersion
            case minOsVersion
            case perfPowerMetrics
            case preReleaseVersion
            case processingState
            case uploadedDate
            case usesNonExemptEncryption
            case version
        }

        public func patch(_ body: _Specification.BetaBuildLocalizationUpdateRequest) -> Request<_Specification.BetaBuildLocalizationResponse> {
            Request(path: path, method: "PATCH", body: body, id: "betaBuildLocalizations-update_instance")
        }

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "betaBuildLocalizations-delete_instance")
        }
    }
}
