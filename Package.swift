// swift-tools-version:5.5
import PackageDescription

let checksum = "a08d5c2d0c2ff6992e22aaf56a2f552ad57e26113c49682c06f59134ea40cbb9"
let version = "60.3.0"
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
