// swift-tools-version:5.4
import PackageDescription

let checksum = "a8febb6bf5d3cc0ac72fd4704f55e873146c0194ea25860c01e0a1d26c0f89dc"
let version = "52.5.0"
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
