import Foundation

/// [ImageFormatter](https://igdb.github.io/api/references/images/) may be used to get URLs of different sized images.
///
/// Images are composable by a fixed set of different named sizes and the retina equivalent.
/// Non-IGDB images are not composable therefore the initializer does throw on initialization.
///
/// For example, given the following url:
///
///     https://images.igdb.com/igdb/image/upload/t_screenshot_med_2x/dfgkfivjrhcksyymh9vw.jpg
///
/// *Break down* of the url:
///
///     https://images.igdb.com/igdb/image/upload/t_{size}/{hash}.jpg
///
/// These are the values to be changed by the formatter, where:
///
///  - `size` is one of the interchangeable size types listed below.
///  - `hash` is the `cloudinary_id` of the image.
///
/// The image sizes are all maximum size but by appending `_2x` to any size, you can get retina (DPR 2.0) sizes (`cover_small_2x`).
///
/// ### Representation
///
/// Here we retrieve the screenshot properties of the game with the id "1942": `/games/1942?fields=screenshots`
///
///     [
///       {
///         "id": 1942,
///         "screenshots": [
///           {
///             "url": "//images.igdb.com/igdb/image/upload/t_thumb/z5t0yuhyiiui1ickwhgj.png",
///             "cloudinary_id": "z5t0yuhyiiui1ickwhgj",
///             "width": 1920,
///             "height": 1080
///           },
///           {
///             "url": "//images.igdb.com/igdb/image/upload/t_thumb/mnljdjtrh44x4snmierh.png",
///             "cloudinary_id": "mnljdjtrh44x4snmierh",
///             "width": 1920,
///             "height": 1080
///           }
///         ]
///       }
///     ]
///
/// - Attention:
///
///     Images that are removed or replaced from IGDB.com exist for 30 days before they are removed.
///     Keep that in mind when designing cache logic.
public extension Image {

    // MARK: Options

    /// Sizes are a fixed set of pre-scaled images, that are:
    ///
    ///     | Name            | Size        | Extra                 |
    ///     | --------------- |:-----------:| --------------------- |
    ///     | cover_small     |   90 x 128  | Fit                   |
    ///     | cover_big       |  264 x 374  | Fit                   |
    ///     | screenshot_med  |  569 x 320  | Lfill, Center gravity |
    ///     | screenshot_big  |  889 x 500  | Lfill, Center gravity |
    ///     | screenshot_huge | 1280 x 720  | Lfill, Center gravity |
    ///     | logo_med        |  284 x 160  | Fit                   |
    ///     | thumb           |   90 x 90   | Thumb, Center gravity |
    ///     | micro           |   35 x 35   | Thumb, Center gravity |
    ///     | 720p            | 1280 x 720  | Fit, Center gravity   |
    ///     | 1080p           | 1920 x 1080 | Fit, Center gravity   |
    public enum Size: String {
        case coverSmall = "cover_small"
        case coverBig = "cover_big"
        case screenshotMedium = "screenshot_med"
        case screenshotBig = "screenshot_big"
        case screenshotHuge = "screenshot_huge"
        case logoMedium = "logo_med"
        case p1080 = "1080p"
        case p720 = "720p"
        case thumb
        case micro
    }

    /// The device pixel ratio to consider for the returning image URL.
    ///
    /// - normal: "Normally" sized image.
    /// - retina: Image with twice the size (2.0 DPR), i.e. appends "_2x" to the size.
    public enum PixelRatio: String, CaseIterable {
        case normal = ""
        case retina = "_2x"
    }

    /// The image raster format of the returning URL.
    ///
    /// - jpg: A url with a `.jpg` ending
    /// - png: A url with a `.png` ending
    public enum RasterFormat: String {
        case jpg
        case png
    }

    public enum Error: Swift.Error {
        case malformedBaseUrl
        case unknownIdentifier
    }

    // MARK: Accessing Sizes

    /// Allows access to a properly sized image, of given `size` considering given `ratio` of given `rasterFormat`
    ///
    ///     //images.igdb.com/igdb/image/upload/t_{size}{_ratio}/{hash}.{format}
    ///
    /// - Parameters:
    ///   - size: `size` is one of the interchangeable size types listed below.
    ///   - ratio: The device pixel ratio to consider for the url.
    ///   - format: The desired image raster format.
    /// - Returns: A URL to an image of requested size, ratio and format.
    /// - Throws:
    ///     `Image.Error.unknownIdentifier` if image is not size composable (none-IGDB images) or
    ///     `Image.Error.malformedBaseUrl` if the baseURL init fails on current platform.
    public func url(for size: Size, ratio: PixelRatio = .normal, of format: RasterFormat = .jpg) throws -> URL {
        guard let url = URL(string: "//images.igdb.com/igdb/image/upload") else { throw Error.malformedBaseUrl }
        guard let identifier = cloudinaryId else { throw Error.unknownIdentifier  }
        return url.appendingPathComponent("t_\(size.rawValue)\(ratio.rawValue)")  // Size           (t_thumb_2x)
            .appendingPathComponent(identifier)                                   // Cloudinary Id  (kjsdhfjhd..)
            .appendingPathExtension(format.rawValue)                              // Raster Format  (.jpg, .png)
    }

    /// Allows access to a properly sized images, of given `size` in all given device screen `ratios`
    ///
    /// - Parameters:
    ///   - size: <#size description#>
    ///   - ratio: <#ratio description#>
    /// - Returns: <#return value description#>


    /// Allows access to a properly sized images, of given `size` in all given device screen `ratios`
    ///
    /// - Parameters:
    ///   - size: `size` is one of the interchangeable size types listed below.
    ///   - ratio: The device pixel ratios to consider for the returning urls.
    ///   - format: The desired image raster format.
    /// - Returns: URLs to images of requested size, ratios and format.
    /// - Throws:
    ///     `Image.Error.unknownIdentifier` if image is not size composable (none-IGDB images) or
    ///     `Image.Error.malformedBaseUrl` if the baseURL init fails on current platform.
    public func url(for size: Size, ratios: [PixelRatio], of format: RasterFormat = .jpg) throws -> [URL] {
        return try ratios.map({ try url(for: size, ratio: $0, of: format) })
    }
}
