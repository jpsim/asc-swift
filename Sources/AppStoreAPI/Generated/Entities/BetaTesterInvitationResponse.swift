// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct BetaTesterInvitationResponse: Codable, Equatable, Sendable {
    /// BetaTesterInvitation
    public var data: BetaTesterInvitation
    public var links: DocumentLinks

    public init(data: BetaTesterInvitation, links: DocumentLinks) {
        self.data = data
        self.links = links
    }
}
