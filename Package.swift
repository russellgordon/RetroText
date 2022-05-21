// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RetroText",
    platforms: [
        .iOS(.v15),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "RetroText",
            targets: ["RetroText"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "RetroText",
            dependencies: [],
            resources: [
                .process("Fonts")
            ])
    ]
)
