// ___FILEHEADER___
// TODO: Fix header

public protocol AssemblyProtocolInternals: AssemblyProtocol {
    static func createRouter<ParentRouterType: AnyObject>(
                        parentRouter: ParentRouterType?,
                        routerViewSetter: inout ((ViewType) -> Void)?)
                -> RouterType
    static func createInteractor(params: AssembleParameters) -> InteractorType
    static func createPresenter(router: RouterType, interactor: InteractorType,
                                presenterSetupFunc: inout (() -> Void)?) -> PresenterType
    static func createView(presenter: PresenterType, viewSetupFunc: inout (() -> Void)?) -> ViewType
}

extension AssemblyProtocolInternals {

    public static func assemble<ParentRouterType>(parentRouter: ParentRouterType?, params: AssembleParameters)
                            -> ViewType where ParentRouterType: AnyObject {
        var setRouterView: ((ViewType) -> Void)?
        let parentRouter: ParentRouterType? = nil
        let router = createRouter(parentRouter: parentRouter, routerViewSetter: &setRouterView)
        let interactor = createInteractor(params: params)

        var setupPresenter: (() -> Void)?
        let presenter = createPresenter(router: router, interactor: interactor,
                                        presenterSetupFunc: &setupPresenter)
        var setupView: (() -> Void)?
        let view = createView(presenter: presenter, viewSetupFunc: &setupView)

        setRouterView?(view)
        setupPresenter?()
        setupView?()
        return view
    }

}
