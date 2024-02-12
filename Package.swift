// swift-tools-version:5.4
import PackageDescription

let checksum = "6f44df8f6a8a3392cd856d443599d84e3bdd8a47ebd96c77bb1d3f0ba63dc3ca"
let version = "57.0.0"
let url = "https://github.com/mozilla/glean/releases/download/v\(version)/Glean.xcframework.zip"

let package = Package(
    name: "Glean",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "Glean", targets: ["Glean"]),
    ],
    targets: [
        .binaryTarget(name: "Glean", url: url, checksum: checksum),
    ]
)
