// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SavingsUIKit",
    platforms: [
        .iOS(.v15)
    ], 
    products: [
        .library(
            name: "SavingsUIKit",
            targets: ["SavingsUIKit"]),
    ],
    targets: [
        .target(
            name: "SavingsUIKit"),
        .testTarget(
            name: "SavingsUIKitTests",
            dependencies: ["SavingsUIKit"]
        ),
    ]
)
