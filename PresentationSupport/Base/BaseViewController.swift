//
//  BaseViewController.swift
//
//  Created by Dmitry Shelonin on 19/07/2019.
//  Copyright © 2019 Dmitry Shelonin. All rights reserved.
//

import UIKit

open class BaseViewController: UIViewController {
    deinit {
        print("DEINIT \(self)")
    }
    
    open override func loadView() {
        super.loadView()

        self.setValue(nil, forKey: "diTag")
    }

    open override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.backBarButtonItem = UIBarButtonItem()
    }
}
