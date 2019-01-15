import Foundation

/// [Pulse Source](https://api-docs.igdb.com/#pulse-source)
///
/// A news article source such as IGN.
public struct PulseSource: Identifiable, Entity, AutoComposable, AutoFilterable, Codable {

    /// The API endpoint to request these entities from.
    /// Path: [/pulse_sources](https://api-v3.igdb.com/pulse_sources)
    public static let requestPath: String = "pulse_sources"

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// If the source only contains news for a specific game, that game ID will be here
    public let game: Expander<Game>?

    /// Name of the article’s publisher
    public let name: String?

    /// The related page that contains more information about the source
    public let page: Expander<Page>?
}
