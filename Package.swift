// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "SavingsUIKit",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "SavingsUIKit",
            targets: ["SavingsUIKit"]
        ),
    ],
    dependencies: [

    ],
    targets: [
        .target(
            name: "SavingsUIKit",
            dependencies: [],
            path: "Sources/SavingsUIKit",
            swiftSettings: [.enableExperimentalFeature("StrictConcurrency")]
        ),
        .testTarget(
            name: "SavingsUIKitTests",
            dependencies: ["SavingsUIKit", ]
        ),
    ]
)
