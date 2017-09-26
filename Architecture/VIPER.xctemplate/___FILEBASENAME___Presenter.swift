//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation

protocol ___FILEBASENAMEASIDENTIFIER___PresenterAppearance {
    func viewDidLoad()
    func viewWillAppear(_ animated: Bool)
    func viewDidAppear(_ animated: Bool)
    func viewWillDisappear(_ animated: Bool)
    func viewDidDisappear(_ animated: Bool)
}

/**
 Inputs declarations here (Presenter)
 */
protocol ___FILEBASENAMEASIDENTIFIER___PresenterInputs: class, ___FILEBASENAMEASIDENTIFIER___PresenterAppearance {

}

/**
 Outputs declarations here (ViewController)
 */
protocol ___FILEBASENAMEASIDENTIFIER___PresenterOutputs: class {

}

protocol ___FILEBASENAMEASIDENTIFIER___PresenterType {
    var inputs: ___FILEBASENAMEASIDENTIFIER___PresenterInputs { get }
    var outputs: ___FILEBASENAMEASIDENTIFIER___PresenterOutputs? { get }
}

final class ___FILEBASENAMEASIDENTIFIER___Presenter: ___FILEBASENAMEASIDENTIFIER___PresenterType {
    let navigator: ___FILEBASENAMEASIDENTIFIER___NavigatorType
    var interactor: ___FILEBASENAMEASIDENTIFIER___InteractorInputs!
    var inputs: ___FILEBASENAMEASIDENTIFIER___PresenterInputs { return self }
    weak var outputs: ___FILEBASENAMEASIDENTIFIER___PresenterOutputs?

    init(navigator: ___FILEBASENAMEASIDENTIFIER___NavigatorType,
         outputs: ___FILEBASENAMEASIDENTIFIER___PresenterOutputs) {

        self.navigator = navigator
        self.outputs = outputs
        /*
         Inject additional dependencies here
         */
    }

    deinit {
        print("['] \(type(of: self))")
    }
}

extension ___FILEBASENAMEASIDENTIFIER___Presenter: ___FILEBASENAMEASIDENTIFIER___PresenterAppearance {
    func viewDidLoad() {
    }

    func viewWillAppear(_ animated: Bool) {
    }

    func viewDidAppear(_ animated: Bool) {
    }

    func viewWillDisappear(_ animated: Bool) {
    }

    func viewDidDisappear(_ animated: Bool) {
    }
}

extension ___FILEBASENAMEASIDENTIFIER___Presenter: ___FILEBASENAMEASIDENTIFIER___PresenterInputs {
    /*
     Implement ___FILEBASENAMEASIDENTIFIER___PresenterInputs protocol
     */
}

extension ___FILEBASENAMEASIDENTIFIER___Presenter: ___FILEBASENAMEASIDENTIFIER___InteractorOutputs {
    /*
     Implement ___FILEBASENAMEASIDENTIFIER___InteractorOutputs protocol
     */
}
