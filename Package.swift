// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SampleSPM",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SampleSPM",
            targets: ["SampleSPM"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/CA-Application-Performance-Management/CAMobileAppAnalytics.git", branch: "spm")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SampleSPM",
            dependencies: []),
        .testTarget(
            name: "SampleSPMTests",
            dependencies: ["SampleSPM"]),
    ]
)
