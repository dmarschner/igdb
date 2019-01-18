import Foundation

extension PlatformVersion: Codable {
    // sourcery:inline:PlatformVersion.Codable

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

    /// Creates a new instance by decoding from the given decoder.
    ///
    /// This initializer throws an error if reading from the decoder fails, or
    /// if the data read is corrupted or otherwise invalid.
    ///
    /// - Parameter decoder: The decoder to read data from.
    public init(from decoder: Decoder) throws {
        // Find proper container, and decode the identifier right away. This is the only mandatory property.
        let container: KeyedDecodingContainer<PlatformVersion.CodingKeys>?
        if let singleContainer = try? decoder.singleValueContainer() {
            identifier = try singleContainer.decode(Identifier.self)
            container = nil
        } else {
            let keyedContainer = try decoder.container(keyedBy: CodingKeys.self)
            identifier = try keyedContainer.decode(Identifier.self, forKey: .identifier)
            container = keyedContainer
        }
        // Extended decoding - any other property than identifier is optional
        companies = try container?.decodeIfPresent(PlatformVersionCompany.self, forKey: .companies) ?? nil
        connectivity = try container?.decodeIfPresent(String.self, forKey: .connectivity) ?? nil
        cpu = try container?.decodeIfPresent(String.self, forKey: .cpu) ?? nil
        graphics = try container?.decodeIfPresent(String.self, forKey: .graphics) ?? nil
        mainManufacturer = try container?.decodeIfPresent(PlatformVersionCompany.self, forKey: .mainManufacturer) ?? nil
        media = try container?.decodeIfPresent(String.self, forKey: .media) ?? nil
        memory = try container?.decodeIfPresent(String.self, forKey: .memory) ?? nil
        name = try container?.decodeIfPresent(String.self, forKey: .name) ?? nil
        operationSystem = try container?.decodeIfPresent(String.self, forKey: .operationSystem) ?? nil
        output = try container?.decodeIfPresent(String.self, forKey: .output) ?? nil
        platformLogo = try container?.decodeIfPresent(Platform.Logo.self, forKey: .platformLogo) ?? nil
        releaseDates = try container?.decodeIfPresent([PlatformVersionReleaseDate].self, forKey: .releaseDates) ?? nil
        resolutions = try container?.decodeIfPresent(String.self, forKey: .resolutions) ?? nil
        slug = try container?.decodeIfPresent(String.self, forKey: .slug) ?? nil
        sound = try container?.decodeIfPresent(String.self, forKey: .sound) ?? nil
        storage = try container?.decodeIfPresent(String.self, forKey: .storage) ?? nil
        summary = try container?.decodeIfPresent(String.self, forKey: .summary) ?? nil
        url = try container?.decodeIfPresent(String.self, forKey: .url) ?? nil
    }

    /// Encodes this value into the given encoder.
    ///
    /// If the value fails to encode anything, `encoder` will encode an empty
    /// keyed container in its place.
    ///
    /// This function throws an error if any values are invalid for the given
    /// encoder's format.
    ///
    /// - Parameter encoder: The encoder to write data to.
    public func encode(to encoder: Encoder) throws {
        guard !isSingleValueContainable() else {
            var container = encoder.singleValueContainer()
            return try container.encode(identifier)
        }
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(identifier, forKey: .identifier)
        try container.encodeIfPresent(companies, forKey: .companies)
        try container.encodeIfPresent(connectivity, forKey: .connectivity)
        try container.encodeIfPresent(cpu, forKey: .cpu)
        try container.encodeIfPresent(graphics, forKey: .graphics)
        try container.encodeIfPresent(mainManufacturer, forKey: .mainManufacturer)
        try container.encodeIfPresent(media, forKey: .media)
        try container.encodeIfPresent(memory, forKey: .memory)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(operationSystem, forKey: .operationSystem)
        try container.encodeIfPresent(output, forKey: .output)
        try container.encodeIfPresent(platformLogo, forKey: .platformLogo)
        try container.encodeIfPresent(releaseDates, forKey: .releaseDates)
        try container.encodeIfPresent(resolutions, forKey: .resolutions)
        try container.encodeIfPresent(slug, forKey: .slug)
        try container.encodeIfPresent(sound, forKey: .sound)
        try container.encodeIfPresent(storage, forKey: .storage)
        try container.encodeIfPresent(summary, forKey: .summary)
        try container.encodeIfPresent(url, forKey: .url)
    }

    /// Returns true if all properties but the identifier are `nil`.
    public func isSingleValueContainable() -> Bool {
        return  // true, if all properties are nil
            companies == nil &&
            connectivity == nil &&
            cpu == nil &&
            graphics == nil &&
            mainManufacturer == nil &&
            media == nil &&
            memory == nil &&
            name == nil &&
            operationSystem == nil &&
            output == nil &&
            platformLogo == nil &&
            releaseDates == nil &&
            resolutions == nil &&
            slug == nil &&
            sound == nil &&
            storage == nil &&
            summary == nil &&
            url == nil &&
            true // Have not found a way to trim the last && with sourcery
    }
    // sourcery:end
}
