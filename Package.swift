// swift-tools-version:6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "apple-swift-http-structured-headers-podspec",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "apple-swift-http-structured-headers-podspec",
            targets: ["apple-swift-http-structured-headers-podspec"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/apple/swift-http-structured-headers.git",
            .upToNextMinor(from: "1.6.0")
        ),
    ],
    targets: [
        .target(
            name: "apple-swift-http-structured-headers-podspec",
            dependencies: [
                .product(name: "StructuredFieldValues",
                         package: "swift-http-structured-headers"),
                .product(name: "RawStructuredFieldValues",
                         package: "swift-http-structured-headers")
            ])
    ]
)
