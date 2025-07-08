// swift-tools-version: 6.1

import PackageDescription

let package = Package(
    name: "Gemify",
    platforms: [
        .iOS(.v15),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "Gemify",
            targets: ["Gemify"]
        ),
        .library(
            name: "Gem",
            targets: ["Gem"]
        ),
        .library(
            name: "Clock",
            targets: ["Clock"]
        )
    ],
    dependencies: [
        // Add any external package dependencies here
    ],
    targets: [
        .target(
            name: "Gem",
            path: "Sources/Gem"
        ),
        .target(
            name: "Gemify",
            dependencies: ["Gem"],
            path: "Sources/Gemify"
        ),
        .target(
            name: "Clock",
            dependencies: ["Gem"],
            path: "Sources/Clock"
        ),
        .testTarget(
            name: "GemifyTests",
            dependencies: ["Gemify"],
            path: "Tests/GemifyTests"
        )
    ]
)
