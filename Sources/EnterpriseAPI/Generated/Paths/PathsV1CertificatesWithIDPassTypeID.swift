// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.Certificates.WithID {
    public var passTypeID: PassTypeID {
        PassTypeID(path: path + "/passTypeId")
    }

    public struct PassTypeID {
        /// Path: `/v1/certificates/{id}/passTypeId`
        public let path: String

        /// Read the Pass Type Id Information of a Certificate
        public func get(fieldsCertificates: [FieldsCertificates]? = nil, fieldsPassTypeIDs: [FieldsPassTypeIDs]? = nil, limitCertificates: Int? = nil, include: [Include]? = nil) -> Request<EnterpriseAPI.PassTypeIDResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsCertificates, fieldsPassTypeIDs, limitCertificates, include), id: "certificates-passTypeId-get_to_one_related")
        }

        private func makeGetQuery(_ fieldsCertificates: [FieldsCertificates]?, _ fieldsPassTypeIDs: [FieldsPassTypeIDs]?, _ limitCertificates: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsCertificates, forKey: "fields[certificates]")
            encoder.encode(fieldsPassTypeIDs, forKey: "fields[passTypeIds]")
            encoder.encode(limitCertificates, forKey: "limit[certificates]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsCertificates: String, CaseIterable, Codable, Sendable {
            case certificateContent
            case certificateType
            case csrContent
            case displayName
            case expirationDate
            case name
            case passTypeID = "passTypeId"
            case platform
            case serialNumber
        }

        public enum FieldsPassTypeIDs: String, CaseIterable, Codable, Sendable {
            case certificates
            case identifier
            case name
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case certificates
        }
    }
}
