// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftyBundleInfo",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftyBundleInfo",
            targets: ["SwiftyBundleInfo"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/Flight-School/AnyCodable",
            branch: "master"
        ),
        .package(
            url: "https://github.com/almazrafi/DictionaryCoder.git",
            branch: "main"
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SwiftyBundleInfo",
            dependencies: [
                .product(name: "AnyCodable", package: "AnyCodable"),
                .product(name: "DictionaryCoder", package: "DictionaryCoder"),
            ]
        ),
        .testTarget(
            name: "SwiftyBundleInfoTests",
            dependencies: ["SwiftyBundleInfo"]
        ),
    ]
)
