import Foundation

extension Feed {

    /// Category of a `FeedItem`, i.e. whether it is an article, trailer, user contribution, ...
    ///
    ///     | Value | Category                | Explanation                                  |
    ///     | ----- | ----------------------- | -------------------------------------------- |
    ///     | 1     | Pulse Article           | Kotaku news article                          |
    ///     | 2     | Coming Soon             | Final Fantasy XXXVIII is releasing in 7 days |
    ///     | 3     | New Trailer             | New trailer added to a game                  |
    ///     | 5     | User Contributed Item   | New feed item created by a user              |
    ///     | 6     | User contributions item | User has changed a game release date         |
    ///     | 7     | Page Contributed Item   | New feed item created by a page              |
    public enum Category: Int, Codable, CustomStringConvertible {
        case pulseArticle = 1
        case comingSoon
        case newTrailer
        case userContributedItem
        case userContributionsItem
        case pageContributedItem

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
