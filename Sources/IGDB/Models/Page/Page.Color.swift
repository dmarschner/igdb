import Foundation

extension Page {

    public enum Color: Int, Codable, LosslessStringConvertible {
        case green
        case blue
        case red
        case orange
        case pink
        case yellow

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
