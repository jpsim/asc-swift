// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct ScmProviderType: Codable, Equatable, Sendable {
    public var kind: Kind?
    public var displayName: String?
    public var isOnPremise: Bool?

    public enum Kind: String, CaseIterable, Codable, Sendable {
        case bitbucketCloud = "BITBUCKET_CLOUD"
        case bitbucketServer = "BITBUCKET_SERVER"
        case githubCloud = "GITHUB_CLOUD"
        case githubEnterprise = "GITHUB_ENTERPRISE"
        case gitlabCloud = "GITLAB_CLOUD"
        case gitlabSelfManaged = "GITLAB_SELF_MANAGED"
    }

    public init(kind: Kind? = nil, displayName: String? = nil, isOnPremise: Bool? = nil) {
        self.kind = kind
        self.displayName = displayName
        self.isOnPremise = isOnPremise
    }
}
