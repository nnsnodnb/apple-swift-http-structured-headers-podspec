#!/usr/bin/env bash -eu

DEPENDENCY="apple-swift-http-structured-headers-podspec"
IOS_SIMULATOR_XCARCHIVE="build/Package-iphonesimulator.xcarchive"
IOS_XCARCHIVE="build/Package-iphoneos.xcarchive"

archive () {
  # for Simulators
  xcodebuild \
    "ENABLE_BITCODE=YES" \
    "BITCODE_GENERATION_MODE=bitcode" \
    "OTHER_CFLAGS=-fembed-bitcode" \
    "BUILD_LIBRARY_FOR_DISTRIBUTION=YES" \
    "SKIP_INSTALL=NO" \
    "EXCLUDED_ARCHS[sdk=iphonesimulator*]=arm64" \
    archive \
    -project "${DEPENDENCY}.xcodeproj" \
    -scheme "${DEPENDENCY}-Package" \
    -destination "generic/platform=iOS Simulator" \
    -configuration "Release" \
    -archivePath "${IOS_SIMULATOR_XCARCHIVE}"

  # for Physical devices
  xcodebuild \
    "ENABLE_BITCODE=YES" \
    "BITCODE_GENERATION_MODE=bitcode" \
    "OTHER_CFLAGS=-fembed-bitcode" \
    "BUILD_LIBRARY_FOR_DISTRIBUTION=YES" \
    "SKIP_INSTALL=NO" \
    archive \
    -project "${DEPENDENCY}.xcodeproj" \
    -scheme "${DEPENDENCY}-Package" \
    -destination "generic/platform=iOS" \
    -configuration "Release" \
    -archivePath "${IOS_XCARCHIVE}"
}

xcframework () {
  xcodebuild \
    -create-xcframework \
    -framework "${IOS_SIMULATOR_XCARCHIVE}/Products/Library/Frameworks/$1.framework" \
    -framework "${IOS_XCARCHIVE}/Products/Library/Frameworks/$1.framework" \
    -output "Frameworks/$1.xcframework"
}

archive

xcframework "RawStructuredFieldValues"
xcframework "StructuredFieldValues"
