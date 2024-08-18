// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct GameCenterPlayerAchievementSubmissionResponse: Codable, Equatable, Sendable {
    /// GameCenterPlayerAchievementSubmission
    public var data: GameCenterPlayerAchievementSubmission
    public var links: DocumentLinks

    public init(data: GameCenterPlayerAchievementSubmission, links: DocumentLinks) {
        self.data = data
        self.links = links
    }
}
