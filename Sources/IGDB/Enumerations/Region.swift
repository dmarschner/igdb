import Foundation

/// Region identifier of e.g. Game Studio HQ, Publisher, ...
///
/// [/enum-fields/region](https://igdb.github.io/api/enum-fields/region/)
///
///     | Value | Region             |
///     | ----- | ------------------ |
///     | 1     | Europe (EU)        |
///     | 2     | North America (NA) |
///     | 3     | Australia (AU)     |
///     | 4     | New Zealand (NZ)   |
///     | 5     | Japan (JP)         |
///     | 6     | China (CH)         |
///     | 7     | Asia (AS)          |
///     | 8     | Worldwide          |
///     | 9     | Hong Kong (HK)     |
///     | 10    | South Korea (KR)   |
public enum Region: Int, Enumeration {
    case europe = 1
    case northAmerica
    case australia
    case newZealand
    case japan
    case china
    case asia
    case worldwide
    case hongKong
    case southKorea
}
