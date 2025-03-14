// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AppsResponse: Codable, Equatable, Sendable {
    public var data: [App]
    public var included: [IncludedItem]?
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public enum IncludedItem: Codable, Equatable, Sendable {
        case appEncryptionDeclaration(AppEncryptionDeclaration)
        case ciProduct(CiProduct)
        case betaGroup(BetaGroup)
        case appStoreVersion(AppStoreVersion)
        case prereleaseVersion(PrereleaseVersion)
        case betaAppLocalization(BetaAppLocalization)
        case build(Build)
        case betaLicenseAgreement(BetaLicenseAgreement)
        case betaAppReviewDetail(BetaAppReviewDetail)
        case appInfo(AppInfo)
        case appClip(AppClip)
        case endUserLicenseAgreement(EndUserLicenseAgreement)
        case inAppPurchase(InAppPurchase)
        case subscriptionGroup(SubscriptionGroup)
        case gameCenterEnabledVersion(GameCenterEnabledVersion)
        case appCustomProductPage(AppCustomProductPage)
        case inAppPurchaseV2(InAppPurchaseV2)
        case promotedPurchase(PromotedPurchase)
        case appEvent(AppEvent)
        case reviewSubmission(ReviewSubmission)
        case subscriptionGracePeriod(SubscriptionGracePeriod)
        case gameCenterDetail(GameCenterDetail)
        case appStoreVersionExperimentV2(AppStoreVersionExperimentV2)

        public init(from decoder: any Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(AppEncryptionDeclaration.self) {
                self = .appEncryptionDeclaration(value)
            } else if let value = try? container.decode(CiProduct.self) {
                self = .ciProduct(value)
            } else if let value = try? container.decode(BetaGroup.self) {
                self = .betaGroup(value)
            } else if let value = try? container.decode(AppStoreVersion.self) {
                self = .appStoreVersion(value)
            } else if let value = try? container.decode(PrereleaseVersion.self) {
                self = .prereleaseVersion(value)
            } else if let value = try? container.decode(BetaAppLocalization.self) {
                self = .betaAppLocalization(value)
            } else if let value = try? container.decode(Build.self) {
                self = .build(value)
            } else if let value = try? container.decode(BetaLicenseAgreement.self) {
                self = .betaLicenseAgreement(value)
            } else if let value = try? container.decode(BetaAppReviewDetail.self) {
                self = .betaAppReviewDetail(value)
            } else if let value = try? container.decode(AppInfo.self) {
                self = .appInfo(value)
            } else if let value = try? container.decode(AppClip.self) {
                self = .appClip(value)
            } else if let value = try? container.decode(EndUserLicenseAgreement.self) {
                self = .endUserLicenseAgreement(value)
            } else if let value = try? container.decode(InAppPurchase.self) {
                self = .inAppPurchase(value)
            } else if let value = try? container.decode(SubscriptionGroup.self) {
                self = .subscriptionGroup(value)
            } else if let value = try? container.decode(GameCenterEnabledVersion.self) {
                self = .gameCenterEnabledVersion(value)
            } else if let value = try? container.decode(AppCustomProductPage.self) {
                self = .appCustomProductPage(value)
            } else if let value = try? container.decode(InAppPurchaseV2.self) {
                self = .inAppPurchaseV2(value)
            } else if let value = try? container.decode(PromotedPurchase.self) {
                self = .promotedPurchase(value)
            } else if let value = try? container.decode(AppEvent.self) {
                self = .appEvent(value)
            } else if let value = try? container.decode(ReviewSubmission.self) {
                self = .reviewSubmission(value)
            } else if let value = try? container.decode(SubscriptionGracePeriod.self) {
                self = .subscriptionGracePeriod(value)
            } else if let value = try? container.decode(GameCenterDetail.self) {
                self = .gameCenterDetail(value)
            } else if let value = try? container.decode(AppStoreVersionExperimentV2.self) {
                self = .appStoreVersionExperimentV2(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (AppEncryptionDeclaration, CiProduct, BetaGroup, AppStoreVersion, PrereleaseVersion, BetaAppLocalization, Build, BetaLicenseAgreement, BetaAppReviewDetail, AppInfo, AppClip, EndUserLicenseAgreement, InAppPurchase, SubscriptionGroup, GameCenterEnabledVersion, AppCustomProductPage, InAppPurchaseV2, PromotedPurchase, AppEvent, ReviewSubmission, SubscriptionGracePeriod, GameCenterDetail, AppStoreVersionExperimentV2)."
                )
            }
        }

        public func encode(to encoder: any Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .appEncryptionDeclaration(let value): try container.encode(value)
            case .ciProduct(let value): try container.encode(value)
            case .betaGroup(let value): try container.encode(value)
            case .appStoreVersion(let value): try container.encode(value)
            case .prereleaseVersion(let value): try container.encode(value)
            case .betaAppLocalization(let value): try container.encode(value)
            case .build(let value): try container.encode(value)
            case .betaLicenseAgreement(let value): try container.encode(value)
            case .betaAppReviewDetail(let value): try container.encode(value)
            case .appInfo(let value): try container.encode(value)
            case .appClip(let value): try container.encode(value)
            case .endUserLicenseAgreement(let value): try container.encode(value)
            case .inAppPurchase(let value): try container.encode(value)
            case .subscriptionGroup(let value): try container.encode(value)
            case .gameCenterEnabledVersion(let value): try container.encode(value)
            case .appCustomProductPage(let value): try container.encode(value)
            case .inAppPurchaseV2(let value): try container.encode(value)
            case .promotedPurchase(let value): try container.encode(value)
            case .appEvent(let value): try container.encode(value)
            case .reviewSubmission(let value): try container.encode(value)
            case .subscriptionGracePeriod(let value): try container.encode(value)
            case .gameCenterDetail(let value): try container.encode(value)
            case .appStoreVersionExperimentV2(let value): try container.encode(value)
            }
        }
    }

    public init(data: [App], included: [IncludedItem]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }
}
