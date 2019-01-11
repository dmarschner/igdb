// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension Company {

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case startDate = "start_date"
        case changeDate = "change_date"
        case changeDateCategory = "change_date_category"
        case startDateCategory = "start_date_category"
        case changedCompanyId = "changed_company_id"
        case country
        case description
        case developed
        case logo
        case name
        case parent
        case published
        case slug
        case url
        case websites
    }
}
