// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "turbolinks-ios",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "turbolinks-ios",
            targets: ["turbolinks-ios"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "turbolinks-ios"),
        .testTarget(
            name: "turbolinks-iosTests",
            dependencies: ["turbolinks-ios"]
        ),
    ]
)
