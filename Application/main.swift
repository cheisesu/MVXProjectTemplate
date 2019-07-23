//
//  main.swift
//
//  Created by Dmitry Shelonin on 18/07/2019.
//  Copyright © 2019 Dmitry Shelonin. All rights reserved.
//

import UIKit

var appClass: String?
var appDelegateClass: String
if NSClassFromString("XCTestCase") == nil {
    appDelegateClass = NSStringFromClass(AppDelegate.self)
} else {
    assertionFailure("Not implemented")
    appDelegateClass = NSStringFromClass(AppDelegate.self)
}

UIApplicationMain(CommandLine.argc, CommandLine.unsafeArgv, appClass, appDelegateClass)
