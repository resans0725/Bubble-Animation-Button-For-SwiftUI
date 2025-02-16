// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

//  Copyright (c) 2025 Resan
//  This software is released under the MIT License.
//  See LICENSE file for details.

import PackageDescription

let package = Package(
    name: "BubbleAnimationButton",
    platforms: [.iOS(.v16)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "BubbleAnimationButton",
            targets: ["BubbleAnimationButton"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "BubbleAnimationButton",
            dependencies: []
        ),
        .testTarget(
            name: "BubbleAnimationButtonTests",
            dependencies: ["BubbleAnimationButton"]
        ),
    ]
)
