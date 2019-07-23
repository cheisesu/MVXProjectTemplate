//
//  SplashViewModel.swift
//
//  Created by Dmitry Shelonin on 23/07/2019.
//  Copyright © 2019 My Company. All rights reserved.
//

import ArchitecturesSupport
import RxSwift
import RxCocoa

final class SplashViewModel: ViewModel {
    private var router: Router

    var title: Driver<String> = .just("Splash Title")

    init(router: Router) {
        self.router = router
    }
}
