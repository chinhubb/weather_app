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

import UIKit

protocol ForeCastHomeBusinessLogic {
    func doSomething(request: ForeCastHome.Something.Request)
//    func doSomethingElse(request: ForeCastHome.SomethingElse.Request)
}

protocol ForeCastHomeDataStore {
    //var name: String { get set }
}

class ForeCastHomeInteractor: ForeCastHomeBusinessLogic, ForeCastHomeDataStore {
    var presenter: ForeCastHomePresentationLogic?
    var worker: ForeCastHomeWorker?
    //var name: String = ""

    // MARK: Do something (and send response to ForeCastHomePresenter)

    func doSomething(request: ForeCastHome.Something.Request) {
        worker = ForeCastHomeWorker()
        worker?.doSomeWork()

        let response = ForeCastHome.Something.Response()
        presenter?.presentSomething(response: response)
    }
//
//    func doSomethingElse(request: ForeCastHome.SomethingElse.Request) {
//        worker = ForeCastHomeWorker()
//        worker?.doSomeOtherWork()
//
//        let response = ForeCastHome.SomethingElse.Response()
//        presenter?.presentSomethingElse(response: response)
//    }
}