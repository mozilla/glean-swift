// swift-tools-version:5.4
import PackageDescription

let checksum = "309266e2c54a2c4f8d4e96f2fa37a551f4d8a0f1a30e5f83361ac8389d3566c9"
let version = "42.0.1"
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
