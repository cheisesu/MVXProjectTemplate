//
//  SplashViewController.swift
//
//  Created by Dmitry Shelonin on 23/07/2019.
//  Copyright 2019 My Company. All rights reserved.
//

import UIKit
import PresentationSupport
import ArchitecturesSupport
import RxSwift
import RxCocoa

protocol SplashView: View {}

final class SplashViewController: BaseViewController, SplashView {
    private var viewModel: SplashViewModel!
    private var disposeBag: DisposeBag = .init()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setup()
    }
}

// MARK: - VIEW MODEL INJECTABLE

extension SplashViewController: ViewModelInjectable {
    func set(viewModel: ViewModel) {
        self.viewModel = viewModel as? SplashViewModel

        self.setupBindings()
    }
}

// MARK: - CONFIGURATIONS

private extension SplashViewController {
    func setup() {
        self.view.backgroundColor = Asset.Colors.app.color
        print("\(self.title)")
    }

    func setupBindings() {
        self.viewModel.title.drive(self.rx.title).disposed(by: self.disposeBag)
    }
}
