// swift-tools-version:5.5
import PackageDescription

let checksum = "b9ef553c0d2d96bbf5f28bb68aba9c3901ee62316338050c8bc1209d3b71b4d3"
let version = "66.1.1"
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
