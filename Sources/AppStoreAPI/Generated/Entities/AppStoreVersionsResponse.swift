// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AppStoreVersionsResponse: Codable, Equatable, Sendable {
    public var data: [AppStoreVersion]
    public var included: [IncludedItem]?
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public enum IncludedItem: Codable, Equatable, Sendable {
        case app(App)
        case ageRatingDeclaration(AgeRatingDeclaration)
        case appStoreVersionLocalization(AppStoreVersionLocalization)
        case build(Build)
        case appStoreVersionPhasedRelease(AppStoreVersionPhasedRelease)
        case routingAppCoverage(RoutingAppCoverage)
        case appStoreReviewDetail(AppStoreReviewDetail)
        case appStoreVersionSubmission(AppStoreVersionSubmission)
        case appClipDefaultExperience(AppClipDefaultExperience)
        case appStoreVersionExperiment(AppStoreVersionExperiment)
        case appStoreVersionExperimentV2(AppStoreVersionExperimentV2)
        case alternativeDistributionPackage(AlternativeDistributionPackage)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(App.self) {
                self = .app(value)
            } else if let value = try? container.decode(AgeRatingDeclaration.self) {
                self = .ageRatingDeclaration(value)
            } else if let value = try? container.decode(AppStoreVersionLocalization.self) {
                self = .appStoreVersionLocalization(value)
            } else if let value = try? container.decode(Build.self) {
                self = .build(value)
            } else if let value = try? container.decode(AppStoreVersionPhasedRelease.self) {
                self = .appStoreVersionPhasedRelease(value)
            } else if let value = try? container.decode(RoutingAppCoverage.self) {
                self = .routingAppCoverage(value)
            } else if let value = try? container.decode(AppStoreReviewDetail.self) {
                self = .appStoreReviewDetail(value)
            } else if let value = try? container.decode(AppStoreVersionSubmission.self) {
                self = .appStoreVersionSubmission(value)
            } else if let value = try? container.decode(AppClipDefaultExperience.self) {
                self = .appClipDefaultExperience(value)
            } else if let value = try? container.decode(AppStoreVersionExperiment.self) {
                self = .appStoreVersionExperiment(value)
            } else if let value = try? container.decode(AppStoreVersionExperimentV2.self) {
                self = .appStoreVersionExperimentV2(value)
            } else if let value = try? container.decode(AlternativeDistributionPackage.self) {
                self = .alternativeDistributionPackage(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (App, AgeRatingDeclaration, AppStoreVersionLocalization, Build, AppStoreVersionPhasedRelease, RoutingAppCoverage, AppStoreReviewDetail, AppStoreVersionSubmission, AppClipDefaultExperience, AppStoreVersionExperiment, AppStoreVersionExperimentV2, AlternativeDistributionPackage)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .app(let value): try container.encode(value)
            case .ageRatingDeclaration(let value): try container.encode(value)
            case .appStoreVersionLocalization(let value): try container.encode(value)
            case .build(let value): try container.encode(value)
            case .appStoreVersionPhasedRelease(let value): try container.encode(value)
            case .routingAppCoverage(let value): try container.encode(value)
            case .appStoreReviewDetail(let value): try container.encode(value)
            case .appStoreVersionSubmission(let value): try container.encode(value)
            case .appClipDefaultExperience(let value): try container.encode(value)
            case .appStoreVersionExperiment(let value): try container.encode(value)
            case .appStoreVersionExperimentV2(let value): try container.encode(value)
            case .alternativeDistributionPackage(let value): try container.encode(value)
            }
        }
    }

    public init(data: [AppStoreVersion], included: [IncludedItem]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }
}
