#!/usr/bin/env bash -eu

xcframework () {
  mint run swift-create-xcframework \
    $1 \
    --platform ios \
    --platform macos \
    --output Frameworks \
    --stack-evolution \
    --xc-setting ONLY_ACTIVE_ARCH=YES \
    --xc-setting SKIP_INSTALL=NO | bundle exec xcpretty
}

xcframework "RawStructuredFieldValues StructuredFieldValues"
