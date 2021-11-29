// ___FILEHEADER___

public struct ___VARIABLE_moduleName___PresenterConstants {
    // TODO: Define constants available to View
}
public struct ___VARIABLE_moduleName___PresenterInputActions {
    // TODO: Define observables/callbacks for receiving actions from View
}
public struct ___VARIABLE_moduleName___PresenterOutputBindings {
    // TODO: Define observables/callbacks/values to bind to View
}

public protocol ___VARIABLE_moduleName___Presenter {
    typealias Constants = ___VARIABLE_moduleName___PresenterConstants
    typealias InputActions = ___VARIABLE_moduleName___PresenterInputActions
    typealias OutputBindings = ___VARIABLE_moduleName___PresenterOutputBindings

    typealias RouterType = ___VARIABLE_moduleName___Router
    typealias InteractorType = ___VARIABLE_moduleName___Interactor

    var constants: ___VARIABLE_moduleName___PresenterConstants { get }

    @discardableResult
    func bind(inputs: InputActions) -> OutputBindings

}

private final class ___VARIABLE_moduleName___PresenterImpl {
    let router: RouterType
    let interactor: InteractorType
    let constants: ___VARIABLE_moduleName___PresenterConstants

    init(router: RouterType, interactor: InteractorType, presenterSetupFunc: inout (() -> Void)?) {
        self.router = router
        self.interactor = interactor
        self.constants = ___VARIABLE_moduleName___PresenterConstants()
        presenterSetupFunc = { [weak self] in
            // TODO: Perform additional setup after all VIPER components are configured
        }
    }
}

extension ___VARIABLE_moduleName___PresenterImpl: ___VARIABLE_moduleName___Presenter {

    @discardableResult
    func bind(inputs: InputActions) -> OutputBindings {
        // TODO: 1. Bind to input actions 2. Pass observables/values/callbacks from Interactor
        return OutputBindings()
    }

}

extension ___VARIABLE_moduleName___Assembly {

    public static func createPresenter(router: RouterType, interactor: InteractorType,
                                       presenterSetupFunc: inout (() -> Void)?) -> PresenterType {
        return ___VARIABLE_moduleName___PresenterImpl(router: router, interactor: interactor,
                                                      presenterSetupFunc: &presenterSetupFunc)
    }

}
