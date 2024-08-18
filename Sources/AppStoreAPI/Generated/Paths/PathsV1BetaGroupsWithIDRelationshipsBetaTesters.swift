// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.BetaGroups.WithID.Relationships {
    public var betaTesters: BetaTesters {
        BetaTesters(path: path + "/betaTesters")
    }

    public struct BetaTesters {
        /// Path: `/v1/betaGroups/{id}/relationships/betaTesters`
        public let path: String

        public func get(limit: Int? = nil) -> Request<AppStoreAPI.BetaGroupBetaTestersLinkagesResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(limit), id: "betaGroups-betaTesters-get_to_many_relationship")
        }

        private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }

        public func post(_ body: AppStoreAPI.BetaGroupBetaTestersLinkagesRequest) -> Request<Void> {
            Request(path: path, method: "POST", body: body, id: "betaGroups-betaTesters-create_to_many_relationship")
        }

        public func delete(_ body: AppStoreAPI.BetaGroupBetaTestersLinkagesRequest) -> Request<Void> {
            Request(path: path, method: "DELETE", body: body, id: "betaGroups-betaTesters-delete_to_many_relationship")
        }
    }
}
