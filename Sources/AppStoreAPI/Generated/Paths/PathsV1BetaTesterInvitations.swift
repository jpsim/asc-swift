// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1 {
    public var betaTesterInvitations: BetaTesterInvitations {
        BetaTesterInvitations(path: path + "/betaTesterInvitations")
    }

    public struct BetaTesterInvitations {
        /// Path: `/v1/betaTesterInvitations`
        public let path: String

        public func post(_ body: AppStoreAPI.BetaTesterInvitationCreateRequest) -> Request<AppStoreAPI.BetaTesterInvitationResponse> {
            Request(path: path, method: "POST", body: body, id: "betaTesterInvitations-create_instance")
        }
    }
}
