// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.Builds.WithID.Relationships {
    public var betaGroups: BetaGroups {
        BetaGroups(path: path + "/betaGroups")
    }

    public struct BetaGroups {
        /// Path: `/v1/builds/{id}/relationships/betaGroups`
        public let path: String

        public func post(_ body: AppStoreAPI.BuildBetaGroupsLinkagesRequest) -> Request<Void> {
            Request(path: path, method: "POST", body: body, id: "builds-betaGroups-create_to_many_relationship")
        }

        public func delete(_ body: AppStoreAPI.BuildBetaGroupsLinkagesRequest) -> Request<Void> {
            Request(path: path, method: "DELETE", body: body, id: "builds-betaGroups-delete_to_many_relationship")
        }
    }
}
