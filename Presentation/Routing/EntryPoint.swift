//
//  EntryPoint.swift
//
//  Created by Dmitry Shelonin on 19/07/2019.
//

import EasyDi
import ArchitecturesSupport
import PresentationSupport

public let entryPoint: EntryPoint = EntryPointImpl.instance()

final class EntryPointImpl: Assembly, EntryPoint {
    private lazy var infrastructure: InfrastructureAssembly = self.context.assembly()

    public func run() {
        self.infrastructure.router.show(RootModuleItem.splash)
    }
}
