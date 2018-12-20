import Foundation

/// The type of entry in an end credits list.
///
/// [/enum-fields/credit-category](https://igdb.github.io/api/enum-fields/credit-category/)
///
///     | Value | Category        |
///     | ----- | --------------- |
///     | 1     | voice_actor     |
///     | 2     | language        |
///     | 3     | company_credit  |
///     | 4     | employee        |
///     | 5     | misc            |
///     | 6     | support_company |
public enum CreditCategory: Int, Enumeration {
    case voiceActor = 1
    case language
    case companyCredit
    case employee
    case misc
    case supportCompany
}
