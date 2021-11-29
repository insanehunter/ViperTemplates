// ___FILEHEADER___

import UIKit

public protocol ___VARIABLE_moduleName___View: UIViewController {
    // TODO: Declare extra methods available to Presenter
}

private final class ___VARIABLE_moduleName___ViewController: UIViewController {
    typealias PresenterType = ___VARIABLE_moduleName___Presenter

    let presenter: ___VARIABLE_moduleName___Presenter
    var customView: ___VARIABLE_moduleName___CustomView!

    // MARK: - Lifecycle

    init(presenter: ___VARIABLE_moduleName___Presenter, viewSetupFunc setupFunc: inout (() -> Void)?) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
        customView = ___VARIABLE_moduleName___CustomViewFactory.create(
            presenter: presenter, params: ___VARIABLE_moduleName___CustomViewCreationParameters())
        setupFunc = { [weak self] in
            // TODO: Perform additional setup after all VIPER components are configured
        }
        // TODO: Additional view controller initialization goes here
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        view = customView
        customView.setup()
    }
}

extension ___VARIABLE_moduleName___ViewController: ___VARIABLE_moduleName___View {
    // TODO: Implement methods from ___VARIABLE_moduleName___View interface
}

extension ___VARIABLE_moduleName___Assembly {

    public static func createView(presenter: PresenterType,
                                  viewSetupFunc: inout (() -> Void)?) -> ViewType {
        return ___VARIABLE_moduleName___ViewController(presenter: presenter, viewSetupFunc: &viewSetupFunc)
    }

}
