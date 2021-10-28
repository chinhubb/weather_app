//
//  GetForeCastHomeResponse.swift
//  AppWeather
//
//  Created by Jirawat on 28/10/2564 BE.
//

import Foundation
struct GetForeCastHomeElement: Codable {
    var list: [GetForeCastHomeItemElement]?

    init() {
        list = nil
    }

    private enum CodingKeys: String, CodingKey {
        case list
    }
}

struct GetForeCastHomeItemElement: Codable {
    var main: GetWeatherHomeItemElement?
    var date: String?

    init() {
        main = nil
        date = nil
    }

    private enum CodingKeys: String, CodingKey {
        case date = "dt_txt"
        case main
    }
}

typealias GetForeCastHomeResponse = GetForeCastHomeElement
typealias GetForeCastHomeItemModel = GetForeCastHomeItemElement
