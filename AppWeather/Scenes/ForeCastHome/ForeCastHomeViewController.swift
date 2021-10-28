//
//  ForeCastHomeViewController.swift
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

protocol ForeCastHomeDisplayLogic: class
{
    func displaySomething(viewModel: ForeCastHome.Something.ViewModel)
//    func displaySomethingElse(viewModel: ForeCastHome.SomethingElse.ViewModel)
}

class ForeCastHomeViewController: UIViewController, ForeCastHomeDisplayLogic {
    var interactor: ForeCastHomeBusinessLogic?
    var router: (NSObjectProtocol & ForeCastHomeRoutingLogic & ForeCastHomeDataPassing)?

    // MARK: Object lifecycle

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    // MARK: - Setup Clean Code Design Pattern 

    private func setup() {
        let viewController = self
        let interactor = ForeCastHomeInteractor()
        let presenter = ForeCastHomePresenter()
        let router = ForeCastHomeRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }

    // MARK: - Routing

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let scene = segue.identifier {
            let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
            if let router = router, router.responds(to: selector) {
                router.perform(selector, with: segue)
            }
        }
    }

    // MARK: - View lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        doSomething()
//        doSomethingElse()
    }
    
    //MARK: - receive events from UI
    
    //@IBOutlet weak var nameTextField: UITextField!
//
//    @IBAction func someButtonTapped(_ sender: Any) {
//
//    }
//
//    @IBAction func otherButtonTapped(_ sender: Any) {
//
//    }
    
    // MARK: - request data from ForeCastHomeInteractor

    func doSomething() {
        let request = ForeCastHome.Something.Request()
        interactor?.doSomething(request: request)
    }
//
//    func doSomethingElse() {
//        let request = ForeCastHome.SomethingElse.Request()
//        interactor?.doSomethingElse(request: request)
//    }

    // MARK: - display view model from ForeCastHomePresenter

    func displaySomething(viewModel: ForeCastHome.Something.ViewModel) {
        //nameTextField.text = viewModel.name
    }
//
//    func displaySomethingElse(viewModel: ForeCastHome.SomethingElse.ViewModel) {
//        // do sometingElse with viewModel
//    }
}