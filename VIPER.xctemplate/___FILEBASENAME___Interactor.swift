// ___FILEHEADER___

public struct ___VARIABLE_moduleName___InteractorCreationParameters {
    // TODO: Define interactor creation-time parameters.
}

public protocol ___VARIABLE_moduleName___Interactor {
    typealias CreationParameters = ___VARIABLE_moduleName___InteractorCreationParameters

    // TODO: Declare methods and read only variables available to Presenter.
}

private class ___VARIABLE_moduleName___InteractorImpl: ___VARIABLE_moduleName___Interactor {
    init(params: CreationParameters) {
        // TODO: Use creation parameters
    }

    // TODO: Implement ___VARIABLE_moduleName___Interactor protocol
}

extension ___VARIABLE_moduleName___Assembly {

    public typealias AssembleParameters = ___VARIABLE_moduleName___InteractorCreationParameters

    public static func createInteractor(params: AssembleParameters) -> InteractorType {
        return ___VARIABLE_moduleName___InteractorImpl(params: params)
    }

}
