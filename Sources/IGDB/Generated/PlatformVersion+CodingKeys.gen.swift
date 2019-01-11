// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension PlatformVersion {

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case companies
        case connectivity
        case cpu
        case graphics
        case mainManufacturer = "main_manufacturer"
        case media
        case memory
        case name
        case operationSystem = "os"
        case output
        case platformLogo = "platform_logo"
        case releaseDates = "platform_version_release_dates"
        case resolutions
        case slug
        case sound
        case storage
        case summary
        case url
    }
}
