//
//  WeatherHomeAPI.swift
//  AppWeather
//
//  Created by Jirawat on 27/10/2564 BE.
//

import Alamofire
import Foundation

enum WeatherHomeAPI {
    case getHomeWeather(request: GetWeatherHomeRequest)
}

extension WeatherHomeAPI: TargetType {
    var baseURL: URL {
        return URL(string: NetworkConfig.domain)!
    }

    var path: String {
        return "/weather"
    }

    var method: HTTPMethod {
        return .get
    }

    var parameters: Parameters? {
        switch self {
        case let .getHomeWeather(request):
            return request.toDictionaryObject()
        }
    }

    var headers: HTTPHeaders? {
        return []
    }
}
