// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppStoreVersionLocalizations.WithID {
    public var appScreenshotSets: AppScreenshotSets {
        AppScreenshotSets(path: path + "/appScreenshotSets")
    }

    public struct AppScreenshotSets {
        /// Path: `/v1/appStoreVersionLocalizations/{id}/appScreenshotSets`
        public let path: String

        public func get(filterScreenshotDisplayType: [FilterScreenshotDisplayType]? = nil, filterAppCustomProductPageLocalization: [String]? = nil, filterAppStoreVersionExperimentTreatmentLocalization: [String]? = nil, fieldsAppScreenshotSets: [FieldsAppScreenshotSets]? = nil, fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations]? = nil, fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations]? = nil, fieldsAppScreenshots: [FieldsAppScreenshots]? = nil, fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations]? = nil, limit: Int? = nil, limitAppScreenshots: Int? = nil, include: [Include]? = nil) -> Request<_Specification.AppScreenshotSetsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterScreenshotDisplayType, filterAppCustomProductPageLocalization, filterAppStoreVersionExperimentTreatmentLocalization, fieldsAppScreenshotSets, fieldsAppCustomProductPageLocalizations, fieldsAppStoreVersionExperimentTreatmentLocalizations, fieldsAppScreenshots, fieldsAppStoreVersionLocalizations, limit, limitAppScreenshots, include), id: "appStoreVersionLocalizations-appScreenshotSets-get_to_many_related")
        }

        private func makeGetQuery(_ filterScreenshotDisplayType: [FilterScreenshotDisplayType]?, _ filterAppCustomProductPageLocalization: [String]?, _ filterAppStoreVersionExperimentTreatmentLocalization: [String]?, _ fieldsAppScreenshotSets: [FieldsAppScreenshotSets]?, _ fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations]?, _ fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations]?, _ fieldsAppScreenshots: [FieldsAppScreenshots]?, _ fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations]?, _ limit: Int?, _ limitAppScreenshots: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterScreenshotDisplayType, forKey: "filter[screenshotDisplayType]")
            encoder.encode(filterAppCustomProductPageLocalization, forKey: "filter[appCustomProductPageLocalization]")
            encoder.encode(filterAppStoreVersionExperimentTreatmentLocalization, forKey: "filter[appStoreVersionExperimentTreatmentLocalization]")
            encoder.encode(fieldsAppScreenshotSets, forKey: "fields[appScreenshotSets]")
            encoder.encode(fieldsAppCustomProductPageLocalizations, forKey: "fields[appCustomProductPageLocalizations]")
            encoder.encode(fieldsAppStoreVersionExperimentTreatmentLocalizations, forKey: "fields[appStoreVersionExperimentTreatmentLocalizations]")
            encoder.encode(fieldsAppScreenshots, forKey: "fields[appScreenshots]")
            encoder.encode(fieldsAppStoreVersionLocalizations, forKey: "fields[appStoreVersionLocalizations]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(limitAppScreenshots, forKey: "limit[appScreenshots]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FilterScreenshotDisplayType: String, CaseIterable, Codable, Sendable {
            case appIphone67 = "APP_IPHONE_67"
            case appIphone61 = "APP_IPHONE_61"
            case appIphone65 = "APP_IPHONE_65"
            case appIphone58 = "APP_IPHONE_58"
            case appIphone55 = "APP_IPHONE_55"
            case appIphone47 = "APP_IPHONE_47"
            case appIphone40 = "APP_IPHONE_40"
            case appIphone35 = "APP_IPHONE_35"
            case appIpadPro3gen129 = "APP_IPAD_PRO_3GEN_129"
            case appIpadPro3gen11 = "APP_IPAD_PRO_3GEN_11"
            case appIpadPro129 = "APP_IPAD_PRO_129"
            case appIpad105 = "APP_IPAD_105"
            case appIpad97 = "APP_IPAD_97"
            case appDesktop = "APP_DESKTOP"
            case appWatchUltra = "APP_WATCH_ULTRA"
            case appWatchSeries7 = "APP_WATCH_SERIES_7"
            case appWatchSeries4 = "APP_WATCH_SERIES_4"
            case appWatchSeries3 = "APP_WATCH_SERIES_3"
            case appAppleTv = "APP_APPLE_TV"
            case appAppleVisionPro = "APP_APPLE_VISION_PRO"
            case imessageAppIphone67 = "IMESSAGE_APP_IPHONE_67"
            case imessageAppIphone61 = "IMESSAGE_APP_IPHONE_61"
            case imessageAppIphone65 = "IMESSAGE_APP_IPHONE_65"
            case imessageAppIphone58 = "IMESSAGE_APP_IPHONE_58"
            case imessageAppIphone55 = "IMESSAGE_APP_IPHONE_55"
            case imessageAppIphone47 = "IMESSAGE_APP_IPHONE_47"
            case imessageAppIphone40 = "IMESSAGE_APP_IPHONE_40"
            case imessageAppIpadPro3gen129 = "IMESSAGE_APP_IPAD_PRO_3GEN_129"
            case imessageAppIpadPro3gen11 = "IMESSAGE_APP_IPAD_PRO_3GEN_11"
            case imessageAppIpadPro129 = "IMESSAGE_APP_IPAD_PRO_129"
            case imessageAppIpad105 = "IMESSAGE_APP_IPAD_105"
            case imessageAppIpad97 = "IMESSAGE_APP_IPAD_97"
        }

        public enum FieldsAppScreenshotSets: String, CaseIterable, Codable, Sendable {
            case appCustomProductPageLocalization
            case appScreenshots
            case appStoreVersionExperimentTreatmentLocalization
            case appStoreVersionLocalization
            case screenshotDisplayType
        }

        public enum FieldsAppCustomProductPageLocalizations: String, CaseIterable, Codable, Sendable {
            case appCustomProductPageVersion
            case appPreviewSets
            case appScreenshotSets
            case locale
            case promotionalText
        }

        public enum FieldsAppStoreVersionExperimentTreatmentLocalizations: String, CaseIterable, Codable, Sendable {
            case appPreviewSets
            case appScreenshotSets
            case appStoreVersionExperimentTreatment
            case locale
        }

        public enum FieldsAppScreenshots: String, CaseIterable, Codable, Sendable {
            case appScreenshotSet
            case assetDeliveryState
            case assetToken
            case assetType
            case fileName
            case fileSize
            case imageAsset
            case sourceFileChecksum
            case uploadOperations
            case uploaded
        }

        public enum FieldsAppStoreVersionLocalizations: String, CaseIterable, Codable, Sendable {
            case appPreviewSets
            case appScreenshotSets
            case appStoreVersion
            case description
            case keywords
            case locale
            case marketingURL = "marketingUrl"
            case promotionalText
            case supportURL = "supportUrl"
            case whatsNew
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case appCustomProductPageLocalization
            case appScreenshots
            case appStoreVersionExperimentTreatmentLocalization
            case appStoreVersionLocalization
        }
    }
}
