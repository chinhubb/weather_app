//
//  GetWeatherHomeResponse.swift
//  AppWeather
//
//  Created by Jirawat on 27/10/2564 BE.
//

import Foundation

struct GetWeatherHomeElement: Codable {
    var id: Int?
    var name: String?
    var main: GetWeatherHomeItemElement?
    var weather: [GetStatusWeatherItemElement]?

    init() {
        id = nil
        name = nil
        main = nil
        weather = nil
    }

    private enum CodingKeys: String, CodingKey {
        case name, main, id, weather
    }
}

struct GetWeatherHomeItemElement: Codable {
    var temp: Double?
    var humidity: Double?

    init() {
        temp = nil
        humidity = nil
    }

    private enum CodingKeys: String, CodingKey {
        case temp, humidity
    }
}

struct GetStatusWeatherItemElement: Codable {
    var main: String?
    var description: String?
    var icon : String?

    init() {
        main = nil
        description = nil
        icon = nil
    }

    private enum CodingKeys: String, CodingKey {
        case main, description, icon
    }
}

typealias GetWeatherHomeResponse = GetWeatherHomeElement
typealias GetWeatherHomeItemModel = GetWeatherHomeItemElement
typealias GetStatusWeatherHomeItemModel = GetStatusWeatherItemElement
