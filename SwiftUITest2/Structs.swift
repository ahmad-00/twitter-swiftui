// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let feeds = try? newJSONDecoder().decode(Feeds.self, from: jsonData)

import Foundation

// MARK: - Feeds
struct Feeds: Codable {
    var statuses: [Status]?
    var searchMetadata: SearchMetadata?

    enum CodingKeys: String, CodingKey {
        case statuses
        case searchMetadata = "search_metadata"
    }
}

// MARK: - SearchMetadata
struct SearchMetadata: Codable {
    var completedIn, maxID: Double?
    var maxIDStr, nextResults, query, refreshURL: String?
    var count, sinceID: Int?
    var sinceIDStr: String?

    enum CodingKeys: String, CodingKey {
        case completedIn = "completed_in"
        case maxID = "max_id"
        case maxIDStr = "max_id_str"
        case nextResults = "next_results"
        case query
        case refreshURL = "refresh_url"
        case count
        case sinceID = "since_id"
        case sinceIDStr = "since_id_str"
    }
}

// MARK: - Status
struct Status: Codable, Identifiable {
    var id = UUID()
    var createdAt: String?
    var _id: Double?
    var idStr, text: String?
    var truncated: Bool?
    var entities: StatusEntities?
    var metadata: Metadata?
    var source: String?
    var inReplyToStatusID: Double?
    var inReplyToStatusIDStr: String?
    var inReplyToUserID: Double?
    var inReplyToUserIDStr, inReplyToScreenName: String?
    var user: User?
    var place: Place?
    var geo, coordinates, contributors: String?
    var isQuoteStatus: Bool?
    var retweetCount, favoriteCount: Int?
    var favorited, retweeted, possiblySensitive: Bool?
    var lang: String?
    var retweetedStatus: RetweetedStatus?

    enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case _id = "id"
        case idStr = "id_str"
        case text, truncated, entities, metadata, source
        case inReplyToStatusID = "in_reply_to_status_id"
        case inReplyToStatusIDStr = "in_reply_to_status_id_str"
        case inReplyToUserID = "in_reply_to_user_id"
        case inReplyToUserIDStr = "in_reply_to_user_id_str"
        case inReplyToScreenName = "in_reply_to_screen_name"
        case user, geo, coordinates, place, contributors
        case isQuoteStatus = "is_quote_status"
        case retweetCount = "retweet_count"
        case favoriteCount = "favorite_count"
        case favorited, retweeted
        case possiblySensitive = "possibly_sensitive"
        case lang
        case retweetedStatus = "retweeted_status"
    }
}

// MARK: - StatusEntities
struct StatusEntities: Codable {
    var hashtags: [Hashtag]?
    var symbols: [JSONAny]?
    var userMentions: [UserMention]?
    var urls: [URLElement]?

    enum CodingKeys: String, CodingKey {
        case hashtags, symbols
        case userMentions = "user_mentions"
        case urls
    }
}

// MARK: - Hashtag
struct Hashtag: Codable {
    var text: String?
    var indices: [Int]?
}

// MARK: - URLElement
struct URLElement: Codable {
    var url: String?
    var expandedURL: String?
    var displayURL: String?
    var indices: [Int]?

    enum CodingKeys: String, CodingKey {
        case url
        case expandedURL = "expanded_url"
        case displayURL = "display_url"
        case indices
    }
}

// MARK: - UserMention
struct UserMention: Codable {
    var screenName, name: String?
    var id: Double?
    var idStr: String?
    var indices: [Int]?

    enum CodingKeys: String, CodingKey {
        case screenName = "screen_name"
        case name, id
        case idStr = "id_str"
        case indices
    }
}

// MARK: - Metadata
struct Metadata: Codable {
    var isoLanguageCode: String?
    var resultType: ResultType?

    enum CodingKeys: String, CodingKey {
        case isoLanguageCode = "iso_language_code"
        case resultType = "result_type"
    }
}

enum ResultType: String, Codable {
    case recent = "recent"
}

// MARK: - RetweetedStatus
struct RetweetedStatus: Codable {
    var createdAt: String?
    var id: Double?
    var idStr, text: String?
    var truncated: Bool?
    var entities: StatusEntities?
    var metadata: Metadata?
    var source: String?
    var inReplyToStatusID: Double?
    var inReplyToStatusIDStr: String?
    var inReplyToUserID: Double?
    var inReplyToUserIDStr: String?
    var inReplyToScreenName: String?
    var user: User?
    var place: Place?
    var geo, coordinates, contributors: String?
    var isQuoteStatus: Bool?
    var retweetCount, favoriteCount: Int?
    var favorited, retweeted, possiblySensitive: Bool?
    var lang: String?

    enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case id
        case idStr = "id_str"
        case text, truncated, entities, metadata, source
        case inReplyToStatusID = "in_reply_to_status_id"
        case inReplyToStatusIDStr = "in_reply_to_status_id_str"
        case inReplyToUserID = "in_reply_to_user_id"
        case inReplyToUserIDStr = "in_reply_to_user_id_str"
        case inReplyToScreenName = "in_reply_to_screen_name"
        case user, geo, coordinates, place, contributors
        case isQuoteStatus = "is_quote_status"
        case retweetCount = "retweet_count"
        case favoriteCount = "favorite_count"
        case favorited, retweeted
        case possiblySensitive = "possibly_sensitive"
        case lang
    }
}

// MARK: - Place
struct Place: Codable {
    let id: String?
    let url: String?
    let placeType, name, fullName, countryCode: String?
    let country: String?
    let containedWithin: [JSONAny]?
    let boundingBox: BoundingBox?
    let attributes: Attributes?

    enum CodingKeys: String, CodingKey {
        case id, url
        case placeType = "place_type"
        case name
        case fullName = "full_name"
        case countryCode = "country_code"
        case country
        case containedWithin = "contained_within"
        case boundingBox = "bounding_box"
        case attributes
    }
}

// MARK: - BoundingBox
struct BoundingBox: Codable {
    let type: String?
    let coordinates: [[[Double]]]?
}

// MARK: - Attributes
struct Attributes: Codable {
}

// MARK: - User
struct User: Codable {
    var id: Double?
    var idStr, name, screenName, location: String?
    var userDescription: String?
    var url: String?
    var entities: UserEntities?
    var protected: Bool?
    var followersCount, friendsCount, listedCount: Int?
    var createdAt: String?
    var favouritesCount: Int?
    var utcOffset, timeZone: JSONNull?
    var geoEnabled, verified: Bool?
    var statusesCount: Int?
    var lang: JSONNull?
    var contributorsEnabled, isTranslator, isTranslationEnabled: Bool?
    var profileBackgroundColor: String?
    var profileBackgroundImageURL: String?
    var profileBackgroundImageURLHTTPS: String?
    var profileBackgroundTile: Bool?
    var profileImageURL: String?
    var profileImageURLHTTPS: String?
    var profileBannerURL: String?
    var profileLinkColor, profileSidebarBorderColor, profileSidebarFillColor, profileTextColor: String?
    var profileUseBackgroundImage, hasExtendedProfile, defaultProfile, defaultProfileImage: Bool?
    var following, followRequestSent, notifications: JSONNull?
    var translatorType: String?

    enum CodingKeys: String, CodingKey {
        case id
        case idStr = "id_str"
        case name
        case screenName = "screen_name"
        case location
        case userDescription = "description"
        case url, entities, protected
        case followersCount = "followers_count"
        case friendsCount = "friends_count"
        case listedCount = "listed_count"
        case createdAt = "created_at"
        case favouritesCount = "favourites_count"
        case utcOffset = "utc_offset"
        case timeZone = "time_zone"
        case geoEnabled = "geo_enabled"
        case verified
        case statusesCount = "statuses_count"
        case lang
        case contributorsEnabled = "contributors_enabled"
        case isTranslator = "is_translator"
        case isTranslationEnabled = "is_translation_enabled"
        case profileBackgroundColor = "profile_background_color"
        case profileBackgroundImageURL = "profile_background_image_url"
        case profileBackgroundImageURLHTTPS = "profile_background_image_url_https"
        case profileBackgroundTile = "profile_background_tile"
        case profileImageURL = "profile_image_url"
        case profileImageURLHTTPS = "profile_image_url_https"
        case profileBannerURL = "profile_banner_url"
        case profileLinkColor = "profile_link_color"
        case profileSidebarBorderColor = "profile_sidebar_border_color"
        case profileSidebarFillColor = "profile_sidebar_fill_color"
        case profileTextColor = "profile_text_color"
        case profileUseBackgroundImage = "profile_use_background_image"
        case hasExtendedProfile = "has_extended_profile"
        case defaultProfile = "default_profile"
        case defaultProfileImage = "default_profile_image"
        case following
        case followRequestSent = "follow_request_sent"
        case notifications
        case translatorType = "translator_type"
    }
}

// MARK: - UserEntities
struct UserEntities: Codable {
    var url, entitiesDescription: Description?

    enum CodingKeys: String, CodingKey {
        case url
        case entitiesDescription = "description"
    }
}

// MARK: - Description
struct Description: Codable {
    var urls: [URLElement]?
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public func hash(into hasher: inout Hasher) {
        // No-op
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}
