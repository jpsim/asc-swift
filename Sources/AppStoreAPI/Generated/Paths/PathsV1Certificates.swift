// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1 {
    public var certificates: Certificates {
        Certificates(path: path + "/certificates")
    }

    public struct Certificates {
        /// Path: `/v1/certificates`
        public let path: String

        public func get(filterCertificateType: [FilterCertificateType]? = nil, filterDisplayName: [String]? = nil, filterSerialNumber: [String]? = nil, filterID: [String]? = nil, sort: [Sort]? = nil, fieldsCertificates: [FieldsCertificates]? = nil, limit: Int? = nil) -> Request<AppStoreAPI.CertificatesResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterCertificateType, filterDisplayName, filterSerialNumber, filterID, sort, fieldsCertificates, limit), id: "certificates-get_collection")
        }

        private func makeGetQuery(_ filterCertificateType: [FilterCertificateType]?, _ filterDisplayName: [String]?, _ filterSerialNumber: [String]?, _ filterID: [String]?, _ sort: [Sort]?, _ fieldsCertificates: [FieldsCertificates]?, _ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterCertificateType, forKey: "filter[certificateType]")
            encoder.encode(filterDisplayName, forKey: "filter[displayName]")
            encoder.encode(filterSerialNumber, forKey: "filter[serialNumber]")
            encoder.encode(filterID, forKey: "filter[id]")
            encoder.encode(sort, forKey: "sort")
            encoder.encode(fieldsCertificates, forKey: "fields[certificates]")
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }

        public enum FilterCertificateType: String, CaseIterable, Codable, Sendable {
            case iosDevelopment = "IOS_DEVELOPMENT"
            case iosDistribution = "IOS_DISTRIBUTION"
            case macAppDistribution = "MAC_APP_DISTRIBUTION"
            case macInstallerDistribution = "MAC_INSTALLER_DISTRIBUTION"
            case macAppDevelopment = "MAC_APP_DEVELOPMENT"
            case developerIDKext = "DEVELOPER_ID_KEXT"
            case developerIDApplication = "DEVELOPER_ID_APPLICATION"
            case development = "DEVELOPMENT"
            case distribution = "DISTRIBUTION"
            case passTypeID = "PASS_TYPE_ID"
            case passTypeIDWithNfc = "PASS_TYPE_ID_WITH_NFC"
        }

        public enum Sort: String, CaseIterable, Codable, Sendable {
            case certificateType
            case minuscertificateType = "-certificateType"
            case displayName
            case minusdisplayName = "-displayName"
            case id
            case minusid = "-id"
            case serialNumber
            case minusserialNumber = "-serialNumber"
        }

        public enum FieldsCertificates: String, CaseIterable, Codable, Sendable {
            case certificateContent
            case certificateType
            case csrContent
            case displayName
            case expirationDate
            case name
            case platform
            case serialNumber
        }

        public func post(_ body: AppStoreAPI.CertificateCreateRequest) -> Request<AppStoreAPI.CertificateResponse> {
            Request(path: path, method: "POST", body: body, id: "certificates-create_instance")
        }
    }
}
