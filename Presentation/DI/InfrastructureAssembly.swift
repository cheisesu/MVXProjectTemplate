//
//  InfrastructureAssembly.swift
//
//  Created by Dmitry Shelonin on 19/07/2019.
//  Copyright © 2019 Dmitry Shelonin. All rights reserved.
//

import UIKit
import EasyDi
import ArchitecturesSupport

final class InfrastructureAssembly: Assembly {
    private lazy var routingItemsFactory: RoutingItemsFactory = self.context.assembly() as ModulesItemsFactory

    var bundle: Bundle { return define(scope: .lazySingleton, init: Bundle(for: InfrastructureAssembly.self)) }
    var screen: UIScreen { return define(init: UIScreen.main) }
    var window: UIWindow { return define(scope: .lazySingleton, init: UIWindow(frame: self.screen.bounds)) }
    var itemsFactory: RoutingItemsFactory { return define(init: self.routingItemsFactory) }
    var router: Router { return define(scope: .lazySingleton,
                                       init: Router(itemsFactory: self.routingItemsFactory, rootRoutable: self.window)) }
}
