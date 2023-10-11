// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PilotIOS",
    platforms: [.iOS(.v9)],
    products: [
        .library(
            name: "PilotIOS",
            type: .dynamic,
            targets: ["PilotIOS", "PilotCDN"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "PilotCDN",
            path: "xcframeworks/PilotCDN.xcframework"
        ),
        .target(
            name: "PilotIOS",
            dependencies: ["PilotCDN"],
            cSettings: [
                .headerSearchPath("include")
            ]
        )
    ]
)
