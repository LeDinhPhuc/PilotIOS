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
            targets: ["PilotObjC", "PilotIOS"]),
    ],
    dependencies: [],
    targets: [
//         .systemLibrary(name: "PilotObjC", path: "Sources/PilotIOS"),
        .binaryTarget(name: "PilotObjC", path: "libs/PilotCDN.xcframework"),
//        .target(
//             name: "PilotIOS",
//             dependencies: ["PilotObjC"]
////            ,
////             cSettings: [
////                 .headerSearchPath("include"),
////             ]
//            //  ,
//            //  linkerSettings: [
//            //      .linkedLibrary("lib/linPilotCDN.a"),
//            //  ]
//         )
//        ,
//        .testTarget(
//            name: "PilotIOSTests",
//            dependencies: ["PilotIOS"]
//        ),
    ]
)
