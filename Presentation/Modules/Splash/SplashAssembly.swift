//
//  SplashAssembly.swift
//
//  Created by Dmitry Shelonin on 23/07/2019.
//  Copyright 2019 My Company. All rights reserved.
//

import UIKit
import EasyDi
import PresentationSupport
import ArchitecturesSupport

final class SplashAssembly: Assembly, ResolvingAssembly {
    private lazy var infrastructure: InfrastructureAssembly = self.context.assembly()

    private var view: SplashView & ViewModelInjectable { return definePlaceholder() }
    private var viewModel: SplashViewModel {
        return define(init: SplashViewModel(router: self.infrastructure.router))
    }

    func inject(into view: SplashViewController) {
        defineInjection(key: "view", into: view) {
            $0.set(viewModel: self.viewModel)
            return $0
        }
    }
}

extension SplashViewController: MyStoryboardInstantiatable {
    typealias InstantiationAssembly = SplashAssembly
}
