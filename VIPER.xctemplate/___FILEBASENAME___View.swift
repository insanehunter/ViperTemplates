// ___FILEHEADER___

import UIKit

public struct ___VARIABLE_moduleName___CustomViewCreationParameters {
    // TODO: Define view creation-time parameters.
}

public protocol ___VARIABLE_moduleName___CustomView: UIView {
    typealias CreationParameters = ___VARIABLE_moduleName___CustomViewCreationParameters

    func setup()

    // TODO: Declare methods and variables available to ViewController
}

public final class ___VARIABLE_moduleName___CustomViewFactory {
    static func create(presenter: ___VARIABLE_moduleName___Presenter,
                       params: ___VARIABLE_moduleName___CustomView.CreationParameters) -> ___VARIABLE_moduleName___CustomView {
        return ___VARIABLE_moduleName___CustomViewImpl(presenter: presenter, params: params)
    }
}

private final class ___VARIABLE_moduleName___CustomViewImpl: UIView, ___VARIABLE_moduleName___CustomView, HasDisposeBag {
    let presenter: ___VARIABLE_moduleName___Presenter
    let creationParameters: CreationParameters

    // MARK: - UI Elements

    // TODO: Define variables for UI elements

    // MARK: - Lifecycle

    init(presenter: ___VARIABLE_moduleName___Presenter, params: CreationParameters) {
        self.presenter = presenter
        self.creationParameters = params
        super.init(frame: .zero)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setup() {
        setupSubviews()
        setupBindings()
    }
}

// MARK: - Bindings

extension ___VARIABLE_moduleName___CustomViewImpl {

    private func setupBindings() {
        let outputs = presenter.bind(inputs: ___VARIABLE_moduleName___Presenter.InputActions())
    }

}

// MARK: - Layout

extension ___VARIABLE_moduleName___CustomViewImpl {

    private func setupSubviews() {
        backgroundColor = UIColor.white
        addSubviews()
        configureConstraints()
    }

    private func configureConstraints() {

    }

}
