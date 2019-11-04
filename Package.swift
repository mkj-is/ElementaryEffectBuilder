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
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "ElementaryEffectBuilder",
            targets: ["ElementaryEffectBuilder"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "ElementaryEffectBuilder",
            dependencies: []),
        .testTarget(
            name: "ElementaryEffectBuilderTests",
            dependencies: ["ElementaryEffectBuilder"]),
    ]
)
