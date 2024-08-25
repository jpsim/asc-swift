// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources {
    public static var userInvitations: UserInvitations {
        UserInvitations(path: "/v1/userInvitations")
    }

    public struct UserInvitations {
        /// Path: `/v1/userInvitations`
        public let path: String

        /// List Invited Users
        public func get(filterEmail: [String]? = nil, filterRoles: [FilterRoles]? = nil, sort: [Sort]? = nil, fieldsUserInvitations: [FieldsUserInvitations]? = nil, limit: Int? = nil) -> Request<EnterpriseAPI.UserInvitationsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterEmail, filterRoles, sort, fieldsUserInvitations, limit), id: "userInvitations-get_collection")
        }

        private func makeGetQuery(_ filterEmail: [String]?, _ filterRoles: [FilterRoles]?, _ sort: [Sort]?, _ fieldsUserInvitations: [FieldsUserInvitations]?, _ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterEmail, forKey: "filter[email]")
            encoder.encode(filterRoles, forKey: "filter[roles]")
            encoder.encode(sort, forKey: "sort")
            encoder.encode(fieldsUserInvitations, forKey: "fields[userInvitations]")
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }

        public enum FilterRoles: String, CaseIterable, Codable, Sendable {
            case admin = "ADMIN"
            case accountHolder = "ACCOUNT_HOLDER"
            case developer = "DEVELOPER"
        }

        public enum Sort: String, CaseIterable, Codable, Sendable {
            case email
            case minusEmail = "-email"
            case lastName
            case minusLastName = "-lastName"
        }

        public enum FieldsUserInvitations: String, CaseIterable, Codable, Sendable {
            case email
            case expirationDate
            case firstName
            case lastName
            case roles
        }

        /// Invite a User
        public func post(_ body: EnterpriseAPI.UserInvitationCreateRequest) -> Request<EnterpriseAPI.UserInvitationResponse> {
            Request(path: path, method: "POST", body: body, id: "userInvitations-create_instance")
        }
    }
}
