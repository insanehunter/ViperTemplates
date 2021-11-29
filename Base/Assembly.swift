// ___FILEHEADER___
// TODO: Fix header

public protocol AssemblyProtocol {
    associatedtype AssembleParameters

    associatedtype RouterType
    associatedtype InteractorType
    associatedtype PresenterType
    associatedtype ViewType

    static func assemble<ParentRouterType: AnyObject>(parentRouter: ParentRouterType?,
                                                      params: AssembleParameters) -> ViewType
}
