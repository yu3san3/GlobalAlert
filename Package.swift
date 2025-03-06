// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "GlobalAlert",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
        .tvOS(.v15),
        .watchOS(.v8),
        .visionOS(.v1),
    ],
    products: [
        .library(
            name: "GlobalAlert",
            targets: ["GlobalAlert"]
        ),
    ],
    targets: [
        .target(
            name: "GlobalAlert"
        ),
        .testTarget(
            name: "GlobalAlertTests",
            dependencies: ["GlobalAlert"]
        ),
    ]
)
