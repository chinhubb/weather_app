//
//  NetworkConfig.swift
//  AppWeather
//
//  Created by Jirawat on 27/10/2564 BE.
//

import Foundation

struct NetworkConfig {
    static let domain: String = "https://api.openweathermap.org/data/2.5"
    static let apiKey: String! = "87a2f4fcfb87b9bc6b108a2b77b84ff6"

    enum ImageDomainSize: String {
        case small = "https://image.tmdb.org/t/p/w154/"
        case medium = "https://image.tmdb.org/t/p/w500/"
        case cast = "https://image.tmdb.org/t/p/w185/"
        case original = "https://image.tmdb.org/t/p/original/"

        func path(poster: String) -> URL {
            return URL(string: rawValue)!.appendingPathComponent(poster)
        }
    }
}
