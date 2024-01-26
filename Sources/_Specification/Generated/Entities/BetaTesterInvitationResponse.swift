// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct BetaTesterInvitationResponse: Codable, Equatable {
    /// BetaTesterInvitation
    public var data: BetaTesterInvitation
    public var links: DocumentLinks

    public init(data: BetaTesterInvitation, links: DocumentLinks) {
        self.data = data
        self.links = links
    }
}
