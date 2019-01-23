import Foundation

extension Game {

    /// Category of a `Game`, i.e. whether is the main game, an expansion, DLC, ...
    ///
    ///     | Value | Category             |
    ///     | ----- | -------------------- |
    ///     | 0     | Main game            |
    ///     | 1     | DLC / Addon          |
    ///     | 2     | Expansion            |
    ///     | 3     | Bundle               |
    ///     | 4     | Standalone expansion |
    public enum Category: Int, Codable, LosslessStringConvertible {
        case mainGame
        case addon
        case expansion
        case bundle
        case standaloneExpansion

        /// Instantiates an instance of the conforming type from a string representation.
        public init?(_ description: String) {
            guard let integer = Int(description) else { return nil }
            self.init(rawValue: integer)
        }

        /// A textual representation of this instance.
        ///
        /// Calling this property directly is discouraged. Instead, convert an
        /// instance of any type to a string by using the `String(describing:)`
        /// initializer. This initializer works with any type, and uses the custom
        /// `description` property for types that conform to
        /// `CustomStringConvertible`:
        ///
        ///     struct Point: CustomStringConvertible {
        ///         let x: Int, y: Int
        ///
        ///         var description: String {
        ///             return "(\(x), \(y))"
        ///         }
        ///     }
        ///
        ///     let p = Point(x: 21, y: 30)
        ///     let s = String(describing: p)
        ///     print(s)
        ///     // Prints "(21, 30)"
        ///
        /// The conversion of `p` to a string in the assignment to `s` uses the
        /// `Point` type's `description` property.
        public var description: String {
            return String(self.rawValue)
        }
    }
}
