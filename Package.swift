// swift-tools-version:5.5
import PackageDescription

let checksum = "98331c795f8e702836a73b62e8bec9f9d60d4f0a8fd51a141def05f15df46423"
let version = "64.0.0"
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
