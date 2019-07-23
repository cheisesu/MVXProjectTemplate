#!/bin/bash
"${PODS_ROOT}/SwiftLint/swiftlint" autocorrect --quiet
"${PODS_ROOT}/SwiftLint/swiftlint" lint --quiet
