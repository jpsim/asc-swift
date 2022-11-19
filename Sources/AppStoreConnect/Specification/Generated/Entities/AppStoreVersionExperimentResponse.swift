// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation

public struct AppStoreVersionExperimentResponse: Codable, Hashable {
    /// AppStoreVersionExperiment
    public var data: AppStoreVersionExperiment
    public var included: [IncludedItem]?
    public var links: DocumentLinks

    public enum IncludedItem: Codable, Hashable {
        case appStoreVersion(AppStoreVersion)
        case appStoreVersionExperimentTreatment(AppStoreVersionExperimentTreatment)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(AppStoreVersion.self) {
                self = .appStoreVersion(value)
            } else if let value = try? container.decode(AppStoreVersionExperimentTreatment.self) {
                self = .appStoreVersionExperimentTreatment(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (AppStoreVersion, AppStoreVersionExperimentTreatment)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .appStoreVersion(let value): try container.encode(value)
            case .appStoreVersionExperimentTreatment(let value): try container.encode(value)
            }
        }
    }

    public init(data: AppStoreVersionExperiment, included: [IncludedItem]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
