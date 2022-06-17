// swift-tools-version:5.4
import PackageDescription

let checksum = "a3f260debb3b0ba4da7bea1ac87c7361c6e30a37aeef017ea596dc296968f122"
let version = "50.1.1"
let url = "https://github.com/mozilla/glean/releases/download/v\(version)/Glean.xcframework.zip"

let package = Package(
    name: "Glean",
    platforms: [.iOS(.v11)],
    products: [
        .library(name: "Glean", targets: ["Glean"]),
    ],
    targets: [
        .binaryTarget(name: "Glean", url: url, checksum: checksum),
    ]
)
