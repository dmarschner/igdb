import Foundation

/// [Search](https://api-docs.igdb.com/#search-181) based on name where results are sorted by similarity to the given search string.
///
/// Allows direct search on an entity endpoint, rather than using the /search endpoint.
/// You specify which endpoint to search through by the entity you are requesting.
/// The search string is then entered by the resulting Apicalypse-`Query`.
///
/// Example:
///
///     Address: https://api-v3.igdb.com/games/
///     Body: search "zelda";
///
/// As of now, only `Character`, `Collection`, `People`, `Game`, `Platform` & `Theme`
public protocol Searchable {}
