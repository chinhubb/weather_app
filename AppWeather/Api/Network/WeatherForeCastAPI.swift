//
//  WeatherForeCastAPI.swift
//  AppWeather
//
//  Created by Jirawat on 28/10/2564 BE.
//

import Alamofire
import Foundation

enum WeatherForeCastAPI {
    case getForeCastHomeWeather(request: GetWeatherHomeRequest)
}

extension WeatherForeCastAPI: TargetType {
    var baseURL: URL {
        return URL(string: NetworkConfig.domain)!
    }

    var path: String {
        return "/forecast"
    }

    var method: HTTPMethod {
        return .get
    }

    var parameters: Parameters? {
        switch self {
        case let .getForeCastHomeWeather(request):
            return request.toDictionaryObject()
        }
    }

    var headers: HTTPHeaders? {
        return []
    }
}
