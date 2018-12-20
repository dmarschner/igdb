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

        /// <#Description#>
        public let url: String

        /// <#Description#>
        public let name: String

        /// <#Description#>
        public let slug: String

        /// <#Description#>
        public let cpu: String?

        /// <#Description#>
        public let operationSystem: String?

        /// <#Description#>
        public let media: String?

        /// <#Description#>
        public let memory: String?

        /// <#Description#>
        public let online: String?

        /// <#Description#>
        public let output: String?

        /// <#Description#>
        public let storage: String?

        /// <#Description#>
        public let graphics: String?

        /// <#Description#>
        public let resolutions: String?

        /// <#Description#>
        public let connectivity: String?

        /// See the [Image](Image.swift) object reference
        public let logo: Image?

        /// <#Description#>
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
