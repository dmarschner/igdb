import Foundation

/// [Tag Numbers](https://api-docs.igdb.com/#tag-numbers)
///
/// Tag numbers are automatically generated numbers which provide a compact and fast way to do complex filtering on the IGDB API.
/// The number calculation can be easily achieved with any programming language.
///
/// The basis of the calculation is a 32bit integer, where the first 4 bits contain the object type ID, and the
/// remaining 28 bits represent the ID of the object we are generating the tag number for.
///
/// Using this method a flat index of custom object ‘hashes’ can be maintained in which index the search and filtering is faster
/// than using conventional methods.
///
/// Currently the following object types use tags:
///
///     | Type ID | Name                |
///     | ------- | ------------------- |
///     | 0       | Theme               |
///     | 1       | Genre               |
///     | 2       | Keyword             |
///     | 3       | Game                |
///     | 4       | Player Perspective  |
///
/// ### Example:
///
/// We try to find all the pulses which relate to the Shooter genre. The tag number generation would look something like this.
///
///     let genreTypeId: Int32 = 1 // The type ID from the table above
///     let shooterGenreId: Int32 = 5 // The Shooter genre's ID, coming from the genres endpoint.
///     // Bit-shifting the genre's type ID by 28 bits, ensuring that it will get into the first four bits.
///     let tag: Tag = genreTypeId << 28 // The result will be 268435456
///     // Adding the Shooter genre ID to the tag number with a bitwise OR operation.
///     tag |= shooterGenreId // The result will be 268435461.
public typealias Tag = Int32
