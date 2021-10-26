//
//  WeatherHomePresenter.swift
//  AppWeather
//
//  Created by Jirawat on 27/10/2564 BE.
//  Copyright (c) 2564 BE ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol WeatherHomePresentationLogic {
    func presentSomething(response: WeatherHome.Something.Response)
}

class WeatherHomePresenter: WeatherHomePresentationLogic {
    weak var viewController: WeatherHomeDisplayLogic?

    // MARK: Parse and calc respnse from WeatherHomeInteractor and send simple view model to WeatherHomeViewController to be displayed

    func presentSomething(response: WeatherHome.Something.Response) {
        let viewModel = WeatherHome.Something.ViewModel()
        viewController?.displaySomething(viewModel: viewModel)
    }
//
//    func presentSomethingElse(response: WeatherHome.SomethingElse.Response) {
//        let viewModel = WeatherHome.SomethingElse.ViewModel()
//        viewController?.displaySomethingElse(viewModel: viewModel)
//    }
}
