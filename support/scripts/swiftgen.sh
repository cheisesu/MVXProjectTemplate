#!/bin/bash
#"$PODS_ROOT/SwiftGen/bin/swiftgen" config run --verbose --config "${PROJECT_DIR}/PresentationSupport/Resources/swiftgen.yml"
"$PODS_ROOT/SwiftGen/bin/swiftgen" strings --templateName structured-swift4 --output "${PROJECT_DIR}/PresentationSupport/Resources/Generated/Localizable.swift" "${PROJECT_DIR}/PresentationSupport/Resources/Localizable.strings" --param publicAccess
"$PODS_ROOT/SwiftGen/bin/swiftgen" xcassets --templateName swift4 --output "${PROJECT_DIR}/PresentationSupport/Resources/Generated/Assets.swift" "${PROJECT_DIR}/PresentationSupport/Resources/Assets.xcassets" --param publicAccess
