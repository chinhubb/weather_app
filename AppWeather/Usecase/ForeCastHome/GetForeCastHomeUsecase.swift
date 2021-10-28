//
//  GetForeCastHomeUsecase.swift
//  AppWeather
//
//  Created by Jirawat on 28/10/2564 BE.
//

import Foundation
import RxSwift

protocol GetForeCastHomeUsecase {
    func execute(city: String) -> Single<GetForeCastHomeResponse>
}

final class GetForeCastHomeUsecaseImpl: GetForeCastHomeUsecase {
    private var foreCastHomeRepository: ForeCastHomeRepository!
    init(repository: ForeCastHomeRepository? = ForeCastHomeRepositoryImpl()) {
        foreCastHomeRepository = repository
    }

    func execute(city: String) -> Single<GetForeCastHomeResponse> {
        var request = GetWeatherHomeRequest()
        request.city = city
        return foreCastHomeRepository.getForeCastHomeWeather(request: request)
    }
}
