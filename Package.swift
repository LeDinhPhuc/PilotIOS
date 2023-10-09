// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PilotIOS",
    products: [
        .library(
            name: "PilotIOS",
            type: .dynamic,
            targets: ["PilotIOS"]),
    ],
    dependencies: [],
    targets: [
         .systemLibrary(name: "PilotObjC", path: "Sources/PilotIOS"),
         .target(
             name: "PilotIOS",
             dependencies: ["PilotObjC"],
             cSettings: [
                 .headerSearchPath("include"),
             ]
            //  ,
            //  linkerSettings: [
            //      .linkedLibrary("lib/linPilotCDN.a"),
            //  ]
         ),
        .testTarget(
            name: "PilotIOSTests",
            dependencies: ["PilotIOS"]
        ),
    ]
)
