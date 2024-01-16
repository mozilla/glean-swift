// swift-tools-version:5.4
import PackageDescription

let checksum = "6d62be2ed73d498395e0c63ac750958b15f19fc8896dfc42a20a1e1b953ad1e2"
let version = "56.1.0"
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
