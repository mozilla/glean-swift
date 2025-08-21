// swift-tools-version:5.5
import PackageDescription

let checksum = "da40f1a3a732f5d114d98653891d291cc3328fc26b24ec7fcff8c70314a73d03"
let version = "65.0.1"
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
