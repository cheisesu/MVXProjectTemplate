//
//  ModulesItemsFactory.swift
//
//  Created by Dmitry Shelonin on 19/07/2019.
//  Copyright © 2019 Dmitry Shelonin. All rights reserved.
//

import EasyDi
import ArchitecturesSupport

final class ModulesItemsFactory: Assembly {
    private var splashView: View { return define(init: SplashViewController()) }
}

extension ModulesItemsFactory: RoutingItemsFactory {
    func routable(for item: RoutingItem) -> Routable? {
        switch item {
        case let item as RootModuleItem: return self.routableForRoot(item)
        default: return nil
        }
    }
}

extension ModulesItemsFactory {
    private func routableForRoot(_ item: RootModuleItem) -> Routable? {
        switch item {
        case .splash: return self.splashView
        }
    }
}
