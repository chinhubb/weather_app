//
//  GetWeatherHomeRequest.swift
//  AppWeather
//
//  Created by Jirawat on 27/10/2564 BE.
//

import Foundation
struct GetWeatherHomeRequest: Codable {
    var apiKey: String!
    var city: String

    init() {
        apiKey = NetworkConfig.apiKey
        city = ""
    }

    private enum CodingKeys: String, CodingKey {
        case apiKey = "appid"
        case city = "q"
    }
}
