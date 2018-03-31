// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "badger",
    products: [
        // .executable(name: "badger", targets: ["badger"]),
        .library(name: "BadgeKit", targets: ["BadgeKit"]),
        .library(name: "BadgeKitStatic", type: .static, targets: ["BadgeKit"]),
        .library(name: "BadgeKitDynamic", type: .dynamic, targets: ["BadgeKit"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "BadgeKit",
            dependencies: [],
            path: "Sources/BadgeKit"),
        .target(
            name: "badger",
            dependencies: [.target(name: "BadgeKit")],
            path: "Sources/badger"),
        .testTarget(
            name: "badgerTests",
            dependencies: [.target(name: "BadgeKit")]),
    ]
)
