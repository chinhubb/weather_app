//
//  ForeCastHomeInteractor.swift
//  AppWeather
//
//  Created by Jirawat on 28/10/2564 BE.
//  Copyright (c) 2564 BE ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import RxSwift
import UIKit

protocol ForeCastHomeBusinessLogic {
    func getForeCastDays(city: String)
}

protocol ForeCastHomeDataStore {
    var data: GetWeatherHomeElement? { get set }
}

class ForeCastHomeInteractor: ForeCastHomeBusinessLogic, ForeCastHomeDataStore {
    var data: GetWeatherHomeElement?

    var presenter: ForeCastHomePresentationLogic?
    lazy var worker: ForeCastHomeWorkable? = {
        ForeCastHomeWorker()
    }()

    fileprivate var disposeBag = DisposeBag()

    func getForeCastDays(city: String) {
        worker?.getForeCast(city: city).subscribe(onSuccess: { [weak self] response in
//            print("odsfs", response.list)
        }, onFailure: { [weak self] error in
            print("Error: \(error)")
        }, onDisposed: nil).disposed(by: disposeBag)
    }
    
    func getdata()
    {
        presenter?.presentShowPage1(weather:data)
    }

}
