import Foundation

public extension Platform {

    /// [Platform version](https://igdb.github.io/api/misc-objects/platform-version/)
    ///
    ///     | Name          | Type               | Mandatory | Comment                                                                     |
    ///     | ------------- | ------------------ |:---------:| --------------------------------------------------------------------------- |
    ///     | url           | string             |     +     |                                                                             |
    ///     | name          | string             |     +     |                                                                             |
    ///     | slug          | string             |     +     |                                                                             |
    ///     | cpu           | string             |     -     |                                                                             |
    ///     | os            | string             |     -     |                                                                             |
    ///     | media         | string             |     -     |                                                                             |
    ///     | memory        | string             |     -     |                                                                             |
    ///     | online        | string             |     -     |                                                                             |
    ///     | output        | string             |     -     |                                                                             |
    ///     | storage       | string             |     -     |                                                                             |
    ///     | graphics      | string             |     -     |                                                                             |
    ///     | resolutions   | string             |     -     |                                                                             |
    ///     | connectivity  | string             |     -     |                                                                             |
    ///     | logo          | object             |     -     | See the [Image](Image.swift) object reference                               |
    ///     | summary       | text (long string) |     -     |                                                                             |
    ///     | release_dates | array of objects   |     -     | See the [release date](Platform.Version.ReleaseDate.swift) object reference |
    ///     | developers    | array of objects   |     -     | See the [Platform company](Platform.Company.swift) object reference         |
    ///     | manufacturers | array of objects   |     -     | See the [Platform company](Platform.Company.swift) object reference         |
    ///
    /// ### Representation
    ///
    ///     {
    ///         "url": "https://www.igdb.com/platforms/linux/version/initial-version-04719e9f-bc9e-4b08-982c-50c495215228",
    ///         "logo": {
    ///             "url": "//images.igdb.com/igdb/image/upload/t_thumb/pilogm8rythuvcg4cslx.png",
    ///             "width": 1344,
    ///             "height": 742,
    ///             "cloudinary_id": "pilogm8rythuvcg4cslx"
    ///         },
    ///         "name": "Initial version",
    ///         "slug": "initial-version-04719e9f-bc9e-4b08-982c-50c495215228",
    ///         "summary": "Linux is a free and open-source (FOSS/FLOSS) Operating System. ...",
    ///         "release_dates": [
    ///             {"date": 694137600000, "region": 8}
    ///         ]
    ///     }
    public struct Version: Miscellaneous {

        /// The URL to the platform site, of this version
        public let url: String

        /// A descriptive version name
        public let name: String

        /// The version slug
        public let slug: String

        /// The CPU description
        public let cpu: String?

        /// The operation system name
        public let operationSystem: String?

        /// <#Description#>
        public let media: String?

        /// The memory description
        public let memory: String?

        /// <#Description#>
        public let online: String?

        /// <#Description#>
        public let output: String?

        /// The storage description
        public let storage: String?

        /// The graphics description
        public let graphics: String?

        /// The resolution description
        public let resolutions: String?

        /// The hardware connectivity description
        public let connectivity: String?

        /// See the [Image](Image.swift) object reference
        public let logo: Image?

        /// A brief summary of the platform in this version
        public let summary: String?

        /// See the [release date](Platform.Version.ReleaseDate.swift) object reference
        public let releaseDates: [ReleaseDate]?

        /// See the [Platform company](Platform.Company.swift) object reference
        public let developers: [Company]?

        /// See the [Platform company](Platform.Company.swift) object reference
        public let manufacturers: [Company]?
    }
}

// MARK: -

extension Platform.Version {

    /// A type that can be used as keys for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
        case url, name, slug, cpu, media, memory, online, output, storage, graphics
        case resolutions, connectivity, logo, summary, developers, manufacturers
        case releaseDates = "release_dates"
        case operationSystem = "os"
    }
}
