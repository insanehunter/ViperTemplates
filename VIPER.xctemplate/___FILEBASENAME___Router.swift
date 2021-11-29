// ___FILEHEADER___

public protocol ___VARIABLE_moduleName___Router {
    typealias ViewType = ___VARIABLE_moduleName___View

    // TODO: Declare methods available to Presenter.
}

private final class ___VARIABLE_moduleName___RouterImpl<ParentRouterType: AnyObject> {
    weak var parentRouter: ParentRouterType?
    weak var view: ViewType?

    init(parentRouter: ParentRouterType?, routerViewSetter: inout ((ViewType) -> Void)?) {
        self.parentRouter = parentRouter
        routerViewSetter = { [weak self] view in
            self?.view = view
        }
    }

}

extension ___VARIABLE_moduleName___RouterImpl: ___VARIABLE_moduleName___Router {
    // TODO: Implement ___VARIABLE_moduleName___Router protocol
}

extension ___VARIABLE_moduleName___Assembly {

    public static func createRouter<ParentRouterType: AnyObject>(
                            parentRouter: ParentRouterType?,
                            routerViewSetter: inout ((ViewType) -> Void)?)
                    -> RouterType {
        return ___VARIABLE_moduleName___RouterImpl(parentRouter: parentRouter, routerViewSetter: &routerViewSetter)
    }

}
