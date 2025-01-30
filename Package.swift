// swift-tools-version:5.5
import PackageDescription

let checksum = "2ea1be6bdda52fcf97adcea25477276d9725982aa069c07dd9ac25132e4c27ac"
let version = "63.1.0"
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
