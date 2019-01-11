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
    public enum Category: Int, Codable {
        case pulseArticle = 1
        case comingSoon
        case newTrailer
        case userContributedItem
        case userContributionsItem
        case pageContributedItem
    }
}