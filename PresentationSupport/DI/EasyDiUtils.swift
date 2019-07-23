// swiftlint:disable all
//
//  EasyDiUtils.swift
//
//  Created by Dmitry Shelonin on 05/07/2019.
//

import EasyDi

public protocol AnyResolvingAssembly {
    func inject(into: AnyObject)
}

public protocol ResolvingAssembly: AnyResolvingAssembly {
    associatedtype InstanceType: NSObjectProtocol
    func inject(into instance: InstanceType)
}

extension ResolvingAssembly {
    public func inject(into any: AnyObject) {
        guard let concrete = any as? InstanceType else {
            fatalError()
        }
        inject(into: concrete)
    }
}

public protocol Injectable: class {
    var assembly: AnyResolvingAssembly { get }
}

public protocol MyStoryboardInstantiatable: Injectable {
    associatedtype InstantiationAssembly: Assembly & ResolvingAssembly
}

extension MyStoryboardInstantiatable {
    public var assembly: AnyResolvingAssembly {
        return DIContext.defaultInstance.assembly() as InstantiationAssembly
    }
}

extension NSObject {
    @objc public var diTag: Any? {
        get { return nil }
        set {
            if let injectable = self as? Injectable {
                injectable.assembly.inject(into: self)
            }
        }
    }
}
