import Foundation

// TODO: Extract error from endpoint and make it more Result<Success, Failure> based

// TODO: CODER NEEDS DATE DE-/ENCODING STRATEGY ADJUSTED
//let decoder = JSONDecoder()
//decoder.dateDecodingStrategy = .secondsSince1970
//let encoder = JSONEncoder()
//encoder.dateEncodingStrategy = .secondsSince1970

/// The common [endpoint](https://api-docs.igdb.com/#endpoints) definition.
///
/// Base path: [https://api-v3.igdb.com](https://api-v3.igdb.com)
///
/// In order to communicate with the server, you will have to send these headers.
///
///     | HTTP Header | Value            |
///     | ----------- | ---------------- |
///     | user-key    | <your-key>       |
///     | accept      | application/json |
///
/// # Common fields in responses
///
/// All the responses may contain the following fields in the result:
///
///     | Name       | Type                    | Mandatory | Comment    |
///     | ---------- | ----------------------- | --------- | ---------- |
///     | id         | unsigned 64-bit integer | +         |            |
///
/// - Important:
///
///     All unix epoch fields’ values are in seconds relative to 00:00:00 UTC on 1 January 1970.

// Rewriter:
// - Extract internal CodingKeys (everything including identifier == id and snake_cased)
// - Extract public Fields (everything not identifier)
