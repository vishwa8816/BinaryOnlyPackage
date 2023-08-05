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
        .package(url: "https://github.com/airbnb/lottie-spm.git", from: "4.2.0")
    ],
    targets: [
        .binaryTarget(
              name: "MyTestFramework",
              url: "https://github.com/vishwa8816/MyTestFrameworkA/releases/download/Third/MyTestFramework.xcframework.zip",
              checksum: "335ccbceaff27fef4d95fc65239fd3722f1646dc34519c43dc3b5a852b446a33"),
        .target(
            name: "BinaryOnlyPackage",
            dependencies: ["MyTestFramework",
                           .product(name: "Lottie", package: "lottie-spm")
            ])
    ]
)
