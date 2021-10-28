//
//  ForeCastHomePresenter.swift
//  AppWeather
//
//  Created by Jirawat on 28/10/2564 BE.
//  Copyright (c) 2564 BE ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol ForeCastHomePresentationLogic {
    func presentFore(res:GetWeatherHomeElement?)
    
    func presentShowPage1(weather:GetWeatherHomeElement?)
}

class ForeCastHomePresenter: ForeCastHomePresentationLogic {
   
    
    weak var viewController: ForeCastHomeDisplayLogic?

    func presentFore(res: GetWeatherHomeElement?) {
        viewController?.ForeCast(res: res!)
    }
    
    func presentShowPage1(weather:GetWeatherHomeElement?) {
        viewController?.display(weather: weather)
    }
}
