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
        .package(url: "ssh://git@github.com/Carthage/Commandant.git", from: "0.13.0"),
        .package(url: "ssh://git@github.com/Quick/Quick.git", from: "1.2.0"),
        //.package(url: "../../ios/pods/Quick", from: "1.2.0"),
        .package(url: "ssh://git@github.com/Quick/Nimble", from: "7.1.0"),
    ],
    targets: [
        .target(
            name: "badger",
            dependencies: [.target(name: "BadgeKit")],
            path: "Sources/badger"),
        .target(
            name: "BadgeKit",
            dependencies: ["Commandant"],
            path: "Sources/BadgeKit"),
        .testTarget(
            name: "BadgeKitTests",
            dependencies: [
                .target(name: "BadgeKit"),
                "Quick",
                "Nimble"
            ],
            path: "Tests/BadgeKitTests"),
    ]
)
