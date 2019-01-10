import Foundation

/// Entities that may update and have their initial creation and last update timestamp recorded.
///
/// These dates may be used to find update/differences.
///
/// All the responses may contain the following fields in the result:
///
///     | Name       | Type           | Comment    |
///     | ---------- | -------------- | ---------- |
///     | created_at | 64-bit integer | Unix epoch |
///     | updated_at | 64-bit integer | Unix epoch |
///
/// ### Representation
///
///     {
///         ...
///         "created_at": 1529500723,
///         "updated_at": 1529500723,
///         ...
///     }
public protocol Updatable {

    /// Date this was initially added to the IGDB database
    var createdAt: Date? { get }

    /// The last date this entry was updated in the IGDB database
    var updatedAt: Date? { get }
}
