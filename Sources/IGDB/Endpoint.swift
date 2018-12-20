import Foundation

/// The common [endpoint](https://igdb.github.io/api/endpoints/) definition.
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
///     | created_at | 64-bit integer          | +         | Unix epoch |
///     | updated_at | 64-bit integer          | +         | Unix epoch |
///     | _score     | float                   | -         | -          |
///     | error      | array of strings        | -         | -          |
///
/// - Important:
///
///     All unix epoch fields’ values are in milliseconds.
///
/// - Note:
///
///     All endpoints support `limit` and `offset` [pagination](https://igdb.github.io/api/references/pagination).
///
/// - SeeAlso:
///
///     Test endpoints using the Live test. Alternatively, we highly recommend postman to perfect your requests.
///
/// ### Representation
///
///     {
///         "id": 1234,
///         "created_at": 1529500723000,
///         "updated_at": 1529500723000,
///         ...
///     }
public protocol Endpoint: Codable {

    /// The identifier value type
    associatedtype Identifier: Codable

    /// The unique resource identifier to this specific entry
    var identifier: Identifier { get }

    /// The resource creation timestamp
    var createdAt: Date { get }

    /// The last resource update timestamp
    var updatedAt: Date { get }

    /// TODO: What exactly is this?
    var score: Float? { get }
}
