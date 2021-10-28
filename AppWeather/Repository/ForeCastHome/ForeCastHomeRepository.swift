//
//  ForeCastHomeRepository.swift
//  AppWeather
//
//  Created by Jirawat on 28/10/2564 BE.
//

import RxSwift

protocol ForeCastHomeRepository {
    func getForeCastHomeWeather(request: GetWeatherHomeRequest) -> Single<GetForeCastHomeResponse>
}

final class ForeCastHomeRepositoryImpl: ForeCastHomeRepository {
    private let networkProvider = Network<WeatherForeCastAPI>()
    
    func getForeCastHomeWeather(request: GetWeatherHomeRequest) -> Single<GetForeCastHomeResponse> {
        return networkProvider
            .request(.getForeCastHomeWeather(request: request), mapper: GetForeCastHomeResponse.self)
    }
}
