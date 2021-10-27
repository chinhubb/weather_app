//
//  GetWeatherHomeUsecase.swift
//  AppWeather
//
//  Created by Jirawat on 27/10/2564 BE.
//

import Foundation
import RxSwift

protocol GetHomeWeatherUsecase {
    func execute() -> Single<GetWeatherHomeResponse>
}

final class GetHomeWeatherUsecaseImpl: GetHomeWeatherUsecase {
    private var weatherHomeRepository: WeatherHomeRepository!
    init(repository: WeatherHomeRepository? = WeatherHomeRepositoryImpl()) {
        weatherHomeRepository = repository
    }

    func execute() -> Single<GetWeatherHomeResponse> {
        var request = GetWeatherHomeRequest()
        request.city = "Bangkok"
        return weatherHomeRepository.getHomeWeather(request: request)
    }
}
