// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1 {
    public var appPreOrders: AppPreOrders {
        AppPreOrders(path: path + "/appPreOrders")
    }

    public struct AppPreOrders {
        /// Path: `/v1/appPreOrders`
        public let path: String

        public func post(_ body: AppStoreAPI.AppPreOrderCreateRequest) -> Request<AppStoreAPI.AppPreOrderResponse> {
            Request(path: path, method: "POST", body: body, id: "appPreOrders-create_instance")
        }
    }
}
