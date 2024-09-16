// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SkippingFlow",
    platforms: [.iOS(.v16), .macOS(.v13), .tvOS(.v16), .watchOS(.v9), .macCatalyst(.v16)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SkippingFlow",
            type: .dynamic,
            targets: ["SkippingFlow"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/tevelee/SwiftUI-Flow.git", from: "2.5.0"),
        .package(url: "https://source.skip.tools/skip.git", from: "1.0.11"),
        .package(url: "https://source.skip.tools/skip-ui.git", from: "1.8.0"),
    ],
    targets: [
        .target(
            name: "SkippingFlow",
            dependencies: [
                .product(name: "Flow", package: "swiftui-flow"),
                .product(name: "SkipUI", package: "skip-ui"),
            ],
            plugins: [.plugin(name: "skipstone", package: "skip")]
        ),
        .testTarget(
            name: "SkippingFlowTests",
            dependencies: [
                "SkippingFlow",
                .product(name: "SkipTest", package: "skip")
            ],
            plugins: [.plugin(name: "skipstone", package: "skip")]
        ),
    ]
)
