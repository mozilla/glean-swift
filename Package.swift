// swift-tools-version:5.5
import PackageDescription

let checksum = "de1f0d8d3b6bc512d581583a86cdf521e9a52830f1ac9cc51ab0ef24ddb039e2"
let version = "64.0.1"
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
