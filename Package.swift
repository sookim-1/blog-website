// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SookimTWL",
    platforms: [.macOS(.v13)],
    dependencies: [
        .package(url: "https://github.com/twostraws/Ignite.git", exact: .init(0, 2, 2))
    ],
    targets: [
        .executableTarget(
            name: "SookimTWL",
            dependencies: ["Ignite"]),
    ]
)
