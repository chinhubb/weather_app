//
//  GetWeatherHomeUsecase.swift
//  AppWeather
//
//  Created by Jirawat on 27/10/2564 BE.
//

import Foundation
import RxSwift

protocol GetHomeWeatherUsecase {
    func execute(city:String) -> Single<GetWeatherHomeResponse>
}

final class GetHomeWeatherUsecaseImpl: GetHomeWeatherUsecase {
    private var weatherHomeRepository: WeatherHomeRepository!
    init(repository: WeatherHomeRepository? = WeatherHomeRepositoryImpl()) {
        weatherHomeRepository = repository
    }

    func execute(city:String) -> Single<GetWeatherHomeResponse> {
        var request = GetWeatherHomeRequest()
        request.city = city
        return weatherHomeRepository.getHomeWeather(request: request)
    }
}
