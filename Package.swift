// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PilotIOS",
    platforms: [.iOS(.v9)],
    products: [
        .library(
            name: "PilotCDN",
            type: .dynamic,
            targets: ["PilotCDN"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "PilotCDNObjC",
            path: "xcframeworks/PilotCDN.xcframework"
        ),
        .target(
            name: "PilotCDNBridge",
            dependencies: ["PilotCDNObjC"]
        ),
        .target(
            name: "PilotCDN",
            dependencies: ["PilotCDNBridge"]
        )
    ]
)
