import Foundation

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
public class Endpoint: Identifiable, Codable {

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64
}
