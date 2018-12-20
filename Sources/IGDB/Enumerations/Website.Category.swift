import Foundation

public extension Website {

    /// Category of a `Website`, i.e. whether it points to the official website, reddit page, twitch directory, ....
    ///
    /// [/enum-fields/website-category](https://igdb.github.io/api/enum-fields/website-category/)
    ///
    ///     | Value | Category  |
    ///     | ----- | --------- |
    ///     | 1     | official  |
    ///     | 2     | wikia     |
    ///     | 3     | wikipedia |
    ///     | 4     | facebook  |
    ///     | 5     | twitter   |
    ///     | 6     | twitch    |
    ///     | 8     | instagram |
    ///     | 9     | youtube   |
    ///     | 10    | iphone    |
    ///     | 11    | ipad      |
    ///     | 12    | android   |
    ///     | 13    | steam     |
    ///     | 14    | Reddit    |
    public enum Category: Int, Enumeration {
        case official = 1
        case wikia
        case wikipedia
        case facebook
        case twitter
        case twitch
        case instagram = 8
        case youtube
        case iphone
        case ipad
        case android
        case steam
        case reddit
    }
}
