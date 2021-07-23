// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ACRepresentable",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_12)
    ],
    products: [
        .library(
            name: "ACRepresentable",
            targets: ["ACRepresentable"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ACRepresentable",
            dependencies: []),
        .testTarget(
            name: "ACRepresentableTests",
            dependencies: ["ACRepresentable"]),
    ]
)
