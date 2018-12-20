import Foundation

/// Defines CodingKeys for `Endpoint` types, as they are constraint to "id", "createdAt" and "updatedAt" properties.
public protocol EndpointKeys: CodingKey {}

public extension EndpointKeys {

    /// The `identifier` key for encoding and decoding
    public static var identifier: String { return "id" }

    /// The `createdAt` key for encoding and decoding
    public static var createdAt: String { return "created_at" }

    /// The `updatedAt` key for encoding and decoding
    public static var updatedAt: String { return "updated_at" }
}
