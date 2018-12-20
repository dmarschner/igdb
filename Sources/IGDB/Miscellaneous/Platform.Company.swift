import Foundation

public extension Platform {

    /// [Platform company](https://igdb.github.io/api/misc-objects/platform-company/)
    ///
    ///     | Name    | Type                    | Mandatory | Comment                    |
    ///     | ------- | ----------------------- |:---------:| -------------------------- |
    ///     | company | unsigned 64-bit integer |     +     |                            |
    ///     | comment | string                  |     +     | What does that company do. |
    ///
    /// ### Representation
    ///
    ///     {
    ///         "company": 12,
    ///         "comment": "Developed stuff!"
    ///     }
    public struct Company: Miscellaneous {

        /// The company identifier (see https://igdb.github.io/api/endpoints/company/)
        public let company: String

        /// What does that company do
        public let comment: String
    }
}
