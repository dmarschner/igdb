import Foundation

extension Achievement {

    /// The rank of the [Achievement](https://api-docs.igdb.com/?swift#achievement)
    ///
    ///     | Value | Rank Name |
    ///     | ----- | --------- |
    ///     | 1     | Bronze    |
    ///     | 2     | Silver    |
    ///     | 3     | Gold      |
    ///     | 4     | Platinum  |
    public enum Rank: Int, Codable, CustomStringConvertible {
        case bronze = 1
        case silver
        case gold
        case platinum

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
