import Foundation

extension Game {

    /// Status of a `Game`, i.e. whether is released, cancelled, early-access, ...
    ///
    ///     | Value | Status            |
    ///     | ----- | ----------------- |
    ///     | 0     | Released          |
    ///     | 2     | Alpha             |
    ///     | 3     | Beta              |
    ///     | 4     | Early access      |
    ///     | 5     | Offline expansion |
    ///     | 6     | Cancelled         |
    public enum Status: Int, Codable, CustomStringConvertible {
        case released = 0
        case alpha = 2
        case beta
        case earlyAccess
        case offlineExpansion
        case cancelled

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
