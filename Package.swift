// swift-tools-version:5.4
import PackageDescription

let checksum = "37c57b186a7dd1dfd6e2ef69768b9d3be6f9d145f2c04680332fe4009b7050b0"
let version = "44.0.0"
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
