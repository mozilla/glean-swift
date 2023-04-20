// swift-tools-version:5.4
import PackageDescription

let checksum = "d4241a7714938ca077b76dc2fbb7c3f0a265f3ac4eca60fffda2e13f09bfa83d"
let version = "52.6.0"
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
