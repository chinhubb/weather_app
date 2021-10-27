//
//  GetWeatherHomeResponse.swift
//  AppWeather
//
//  Created by Jirawat on 27/10/2564 BE.
//

import Foundation

struct GetWeatherHomeElement: Codable {
    var timezone: Int? // total_results
    var results: [GetWeatherHomeItemElement]?
    var name: String?

    init() {
        timezone = nil
        results = nil
        name = nil
    }

    private enum CodingKeys: String, CodingKey {
        case timezone
        case results, name
    }
}

struct GetWeatherHomeItemElement: Codable {
    var id: Int?
    var adult: Bool?
    var backdropPath: String? // backdrop_path
    var genreIds: [Int]? // genre_ids

    var originalLanguage: String? // original_language
    var originalTitle: String? // original_title
    var overview: String?
    var popularity: Double?

    var posterPath: String? // poster_path
    var releaseDate: String? // release_date

    var title: String?

    var voteAverage: Double? // vote_average
    var voteCount: Int? // vote_count

    init() {
        id = nil
        adult = nil
        backdropPath = nil
        genreIds = nil

        originalLanguage = nil
        originalTitle = nil
        overview = ""
        popularity = nil

        posterPath = nil
        releaseDate = nil
        title = nil

        voteAverage = nil
        voteCount = nil
    }

    private enum CodingKeys: String, CodingKey {
        case backdropPath = "backdrop_path"
        case genreIds = "genre_ids"
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
        case id, adult, title, overview, popularity
    }
}

typealias GetWeatherHomeResponse = GetWeatherHomeElement
typealias GetWeatherHomeItemModel = GetWeatherHomeItemElement
