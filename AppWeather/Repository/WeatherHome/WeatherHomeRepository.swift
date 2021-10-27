//
//  WeatherHomeRepository.swift
//  AppWeather
//
//  Created by Jirawat on 27/10/2564 BE.
//

import RxSwift

protocol WeatherHomeRepository {
    func getHomeWeather(request: GetWeatherHomeRequest) -> Single<GetWeatherHomeResponse>
}

final class WeatherHomeRepositoryImpl: WeatherHomeRepository {
    private let networkProvider = Network<WeatherHomeAPI>()
    
    func getHomeWeather(request: GetWeatherHomeRequest) -> Single<GetWeatherHomeResponse> {
        return networkProvider
            .request(.getHomeWeather(request: request), mapper: GetWeatherHomeResponse.self)
    }
}
