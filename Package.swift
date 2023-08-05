// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BinaryOnlyPackage",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "BinaryOnlyPackage",
            targets: ["BinaryOnlyPackage"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
              name: "Lottie",
              url: "https://github.com/airbnb/lottie-ios/releases/download/4.2.0/Lottie.xcframework.zip",
              checksum: "4db3dee208f6213e5c1681f2314c7ed96d466d9b9adfe5cd0030309515075443"),
        .binaryTarget(
              name: "MyTestFramework",
              url: "https://github.com/vishwa8816/MyTestFrameworkA/releases/download/Third/MyTestFramework.xcframework.zip",
              checksum: "335ccbceaff27fef4d95fc65239fd3722f1646dc34519c43dc3b5a852b446a33"),
        .target(
            name: "BinaryOnlyPackage",
            dependencies: ["Lottie", "MyTestFramework"])
    ]
)
