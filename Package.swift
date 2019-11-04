// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ElementaryEffectBuilder",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .watchOS(.v6),
        .tvOS(.v13)
    ],
    products: [
        .library(
            name: "ElementaryEffectBuilder",
            targets: ["ElementaryEffectBuilder"]),
    ],
    dependencies: [
        .package(path: "../Elementary"),
    ],
    targets: [
        .target(
            name: "ElementaryEffectBuilder",
            dependencies: ["Elementary"]),
        .testTarget(
            name: "ElementaryEffectBuilderTests",
            dependencies: ["ElementaryEffectBuilder"]),
    ]
)
