// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1 {
    public var devices: Devices {
        Devices(path: path + "/devices")
    }

    public struct Devices {
        /// Path: `/v1/devices`
        public let path: String

        public func get(filterName: [String]? = nil, filterPlatform: [FilterPlatform]? = nil, filterStatus: [FilterStatus]? = nil, filterUdid: [String]? = nil, filterID: [String]? = nil, sort: [Sort]? = nil, fieldsDevices: [FieldsDevices]? = nil, limit: Int? = nil) -> Request<AppStoreAPI.DevicesResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterName, filterPlatform, filterStatus, filterUdid, filterID, sort, fieldsDevices, limit), id: "devices-get_collection")
        }

        private func makeGetQuery(_ filterName: [String]?, _ filterPlatform: [FilterPlatform]?, _ filterStatus: [FilterStatus]?, _ filterUdid: [String]?, _ filterID: [String]?, _ sort: [Sort]?, _ fieldsDevices: [FieldsDevices]?, _ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterName, forKey: "filter[name]")
            encoder.encode(filterPlatform, forKey: "filter[platform]")
            encoder.encode(filterStatus, forKey: "filter[status]")
            encoder.encode(filterUdid, forKey: "filter[udid]")
            encoder.encode(filterID, forKey: "filter[id]")
            encoder.encode(sort, forKey: "sort")
            encoder.encode(fieldsDevices, forKey: "fields[devices]")
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }

        public enum FilterPlatform: String, CaseIterable, Codable, Sendable {
            case ios = "IOS"
            case macOs = "MAC_OS"
        }

        public enum FilterStatus: String, CaseIterable, Codable, Sendable {
            case enabled = "ENABLED"
            case disabled = "DISABLED"
        }

        public enum Sort: String, CaseIterable, Codable, Sendable {
            case id
            case minusid = "-id"
            case name
            case minusname = "-name"
            case platform
            case minusplatform = "-platform"
            case status
            case minusstatus = "-status"
            case udid
            case minusudid = "-udid"
        }

        public enum FieldsDevices: String, CaseIterable, Codable, Sendable {
            case addedDate
            case deviceClass
            case model
            case name
            case platform
            case status
            case udid
        }

        public func post(_ body: AppStoreAPI.DeviceCreateRequest) -> Request<AppStoreAPI.DeviceResponse> {
            Request(path: path, method: "POST", body: body, id: "devices-create_instance")
        }
    }
}
