// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct UserResponse: Codable, Equatable {
    /// User
    public var data: User
    public var included: [App]?
    public var links: DocumentLinks

    public init(data: User, included: [App]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
