//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import UIKit

final class ___FILEBASENAMEASIDENTIFIER___ModuleBuilder {

    init() {
        /*
         Inject additional dependencies here
         */
    }

    func build() -> UIViewController {

        /*
         Navigator
         */
        let navigator = ___FILEBASENAMEASIDENTIFIER___Navigator()

        /*
         View -> Presenter -> Interactor
         */
        let view = ___FILEBASENAMEASIDENTIFIER___ViewController()

        let presenter = ___FILEBASENAMEASIDENTIFIER___Presenter(navigator: navigator, outputs: view)

        let interactor = ___FILEBASENAMEASIDENTIFIER___Interactor(outputs: presenter)

        /*
         Interactor -> Presenter -> View
         */
        view.presenter = presenter

        presenter.interactor = interactor

        return view
    }
}
