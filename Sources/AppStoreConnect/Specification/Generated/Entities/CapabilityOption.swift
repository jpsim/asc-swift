// Generated by Create API
// https://github.com/CreateAPI/CreateAPI"
//
// swift-format-ignore-file

import Foundation

public struct CapabilityOption: Codable, Hashable {
    public var key: Key?
    public var name: String?
    public var description: String?
    public var isEnabledByDefault: Bool?
    public var isEnabled: Bool?
    public var isSupportsWildcard: Bool?

    public enum Key: String, Codable, CaseIterable {
        case xcode5 = "XCODE_5"
        case xcode6 = "XCODE_6"
        case completeProtection = "COMPLETE_PROTECTION"
        case protectedUnlessOpen = "PROTECTED_UNLESS_OPEN"
        case protectedUntilFirstUserAuth = "PROTECTED_UNTIL_FIRST_USER_AUTH"
        case primaryAppConsent = "PRIMARY_APP_CONSENT"
    }

    public init(key: Key? = nil, name: String? = nil, description: String? = nil, isEnabledByDefault: Bool? = nil, isEnabled: Bool? = nil, isSupportsWildcard: Bool? = nil) {
        self.key = key
        self.name = name
        self.description = description
        self.isEnabledByDefault = isEnabledByDefault
        self.isEnabled = isEnabled
        self.isSupportsWildcard = isSupportsWildcard
    }

    private enum CodingKeys: String, CodingKey {
        case key
        case name
        case description
        case isEnabledByDefault = "enabledByDefault"
        case isEnabled = "enabled"
        case isSupportsWildcard = "supportsWildcard"
    }
}
