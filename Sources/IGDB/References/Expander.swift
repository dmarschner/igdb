import Foundation

/// The [expander](https://igdb.github.io/api/references/expander/) feature is used to combine multiple requests.
///
/// For example, a game provides a list of company IDs which in turn need to be requested to reach the company data.
/// Using the expander parameter, the company ID will instead be an object containing that data.
///
/// The expander can be used on any entity that has sub-properties such as Games, Companies, People etc.
///
/// -Example:
///
///     /games/1838,828,1337?fields=name,themes.name,game.name&expand=game,themes
///
/// We start with this simple URL.
///
///     /games/1838,828,1337
///
/// First we have the resource part of the url. In this case we get the games with ID: 1838, 828 and 1337
///
///     expand=game,themes
///
/// With this parameter, we will expand: game (parent game) and themes (the themes that the game has).
///
///     fields=name,themes.name,game.name
///
/// We also have to specify all the fields we want to have expanded. If you don't specify the fields it will give you the full object.
///
/// * name: The field on the root game model.
/// * game.name: The field on the parent game model.
/// * themes.name: The field on the theme model.
///
/// The result will be:
///
///     [
///       {
///         "id": 1838,
///         "name": "Painkiller: Redemption",
///         "game": {
///           "id": 828,
///           "name": "Painkiller"
///         },
///         "themes": [
///           {
///             "id": 1,
///             "name": "Action"
///           },
///           {
///             "id": 19,
///             "name": "Horror"
///           }
///         ]
///       }
///     ]
///
/// Now for the more advanced expander:
///
///     /pulses/19357?fields=title,pulse_source.name,pulse_source.page.name,pulse_source.page.logo&expand=pulse_source.page
///
/// We get the pulse news article with ID: 19357.
///
///     expand=pulse_source.page
///
/// We want the pulse_source and it's page with associated logo's and deeper information.
///
///     fields=title,pulse_source.name,pulse_source.page.name,pulse_source.page.logo
///
/// Because the pulse_source is inferred, you can also specify fields on the pulse_source as well.
///
/// The result is:
///
///     [
///       {
///         "id": 19357,
///         "title": "Today’s selection of articles from Kotaku’s reader-run community: Anatomy of a Fire Emblem Character",
///         "pulse_source": {
///           "id": 1,
///           "name": "Kotaku",
///           "page": {
///             "id": 501,
///             "name": "Kotaku",
///             "logo": {
///               "url": "//images.igdb.com/igdb/image/upload/t_thumb/ns8o3b99iwdbyee8wu9c.png",
///               "cloudinary_id": "ns8o3b99iwdbyee8wu9c",
///               "width": 240,
///               "height": 240
///             }
///           }
///         }
///       }
///     ]
///
public enum Expander<Endpoint> where Endpoint: IGDB.Endpoint  {
    case identifier(Endpoint.Identifier)
    case expanded(Endpoint)
}
