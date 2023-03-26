// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Fri_SDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "Fri_SDK",
            targets: ["Fri_SDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/kishikawakatsumi/KeychainAccess", from: Version("4.2.2")),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", from: Version("1.6.0")),
        .package(url: "https://github.com/onevcat/Kingfisher.git", from: Version("7.4.1")),
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: Version("5.6.0")),
        .package(url: "https://github.com/airbnb/lottie-ios.git", from: Version("4.0.1")),
        .package(url: "https://github.com/slackhq/PanModal.git", from: Version("1.2.7")),
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git", from: Version("10.4.0"))
    ],
    targets: [
            .binaryTarget(
                name: "Fri_SDK",
                path: "Fri_SDK.xcframework")
            ]
)
