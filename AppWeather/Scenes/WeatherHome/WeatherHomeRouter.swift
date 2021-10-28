//
//  WeatherHomeRouter.swift
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

//@objc protocol WeatherHomeRoutingLogic {
//    func routeToForeCast(segue: UIStoryboardSegue?)
//
//}

@objc protocol WeatherHomeRoutingLogic {
    func routeToMovieDetail()
}

protocol WeatherHomeDataPassing {
    var dataStore: WeatherHomeDataStore? {get}
}

final class WeatherHomeRouter: NSObject, WeatherHomeRoutingLogic, WeatherHomeDataPassing {
    
    
    weak var viewController: WeatherHomeViewController?
    var dataStore: WeatherHomeDataStore?

//    func routeToForeCast(segue: UIStoryboardSegue?) {
//        if let segue = segue {
//            let destinationVC = viewController?.storyboard?.instantiateViewController(withIdentifier: "ForeCastHomeViewController") as! ForeCastHomeViewController
//            var destinationDS = destinationVC.router!.dataStore!
//            passDataToForeCast(source: dataStore!, destination: &destinationDS)
//            navigateToForeCast(source: viewController!, destination: destinationVC)
//        }
//    }
//
//    func navigateToForeCast(source: WeatherHomeViewController, destination: ForeCastHomeViewController)
//    {
//        source.show(destination, sender: nil)
//    }
//
//    func passDataToForeCast(source: WeatherHomeDataStore, destination: inout ForeCastHomeDataStore)
//    {
//        destination.data = source.dataWeather
//        print("opdsfkopsd", source.dataWeather?.name)
//    }
    
    func routeToMovieDetail() {
        
    }
    
    func navigateToMovieDetail(source: WeatherHomeViewController, destination: ForeCastHomeViewController) {
        source.navigationController?.pushViewController(destination, animated: true)
    }
}
