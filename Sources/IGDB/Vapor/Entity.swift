import Foundation

/// A requestable endpoint entity must define its own request path.
public protocol Entity {

    /// The API endpoint to request these entities from
    static var requestPath: String { get }
}
