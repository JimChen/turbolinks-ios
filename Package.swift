// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Turbolinks",
    platforms: [
        .iOS(.v13) // Adjust this version as needed
    ],
    products: [
        .library(
            name: "Turbolinks",
            targets: ["Turbolinks"]
        ),
    ],
    targets: [
        .target(
            name: "Turbolinks",
            path: "Turbolink"
        )
    ]
)
