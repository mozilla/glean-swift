// swift-tools-version:5.4
import PackageDescription

let checksum = "6bdb154e3c561d3c03494950a2a5e14b2cf2119a0e4f6238156f4bec47510699"
let version = "51.8.1"
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
