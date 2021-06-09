// swift-tools-version:5.4
import PackageDescription

let checksum = "0e0467a3af54ee24f3627e18458fb7f42f73fcf4797c73b097a7bf5a7cb925a1"
let version = "39.0.3"
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
