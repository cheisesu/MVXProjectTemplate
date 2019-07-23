//
//  RoutingItems.swift
//
//  Created by Dmitry Shelonin on 19/07/2019.
//  Copyright © 2019 Dmitry Shelonin. All rights reserved.
//

import ArchitecturesSupport

enum RootModuleItem: RootRoutingItem {
    case splash

    var transition: CATransition? { return nil }
}
