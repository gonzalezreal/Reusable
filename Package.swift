// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Reusable",
    platforms: [
        .iOS(.v9),
        .tvOS(.v9),
    ],
    products: [
        .library(name: "Reusable", targets: ["Reusable"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "Reusable", dependencies: []),
        .testTarget(name: "ReusableTests", dependencies: ["Reusable"]),
    ]
)
