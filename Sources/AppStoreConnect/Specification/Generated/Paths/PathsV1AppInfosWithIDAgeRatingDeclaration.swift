// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppInfos.WithID {
    public var ageRatingDeclaration: AgeRatingDeclaration {
        AgeRatingDeclaration(path: path + "/ageRatingDeclaration")
    }

    public struct AgeRatingDeclaration {
        /// Path: `/v1/appInfos/{id}/ageRatingDeclaration`
        public let path: String

        public func get(fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations]? = nil) -> Request<AppStoreConnect.AgeRatingDeclarationResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(fieldsAgeRatingDeclarations), id: "appInfos-ageRatingDeclaration-get_to_one_related")
        }

        private func makeGetQuery(_ fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsAgeRatingDeclarations, forKey: "fields[ageRatingDeclarations]", explode: false)
            return encoder.items
        }

        public enum FieldsAgeRatingDeclarations: String, Codable, CaseIterable {
            case alcoholTobaccoOrDrugUseOrReferences
            case contests
            case gambling
            case gamblingAndContests
            case gamblingSimulated
            case horrorOrFearThemes
            case kidsAgeBand
            case matureOrSuggestiveThemes
            case medicalOrTreatmentInformation
            case profanityOrCrudeHumor
            case seventeenPlus
            case sexualContentGraphicAndNudity
            case sexualContentOrNudity
            case unrestrictedWebAccess
            case violenceCartoonOrFantasy
            case violenceRealistic
            case violenceRealisticProlongedGraphicOrSadistic
        }
    }
}
