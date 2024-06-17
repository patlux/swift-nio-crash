// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-nio-crash",
    platforms: [.macOS(.v13)],
    dependencies: [
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.66.0"),
    ],
    targets: [
        .executableTarget(
            name: "swift-nio-crash",
            dependencies: [
                .product(name: "_NIOFileSystem", package: "swift-nio"),
            ]
        ),
    ]
)
