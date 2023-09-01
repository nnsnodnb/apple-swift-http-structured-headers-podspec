// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "apple-swift-http-structured-headers-podspec",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "apple-swift-http-structured-headers-podspec",
            targets: ["apple-swift-http-structured-headers-podspec"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/apple/swift-http-structured-headers.git",
            .upToNextMinor(from: "1.0.0")
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
