//
// InvoiceMedia
//
// Created by Sergei Cherepanov on 27.11.2021.
// Copyright © 2021 Coding Team. All rights reserved.
//

public protocol AssemblyProtocol {
    associatedtype AssembleParameters

    associatedtype RouterType
    associatedtype InteractorType
    associatedtype PresenterType
    associatedtype ViewType

    static func assemble<ParentRouterType: AnyObject>(parentRouter: ParentRouterType?,
                                                      params: AssembleParameters) -> ViewType
}
