// swift-tools-version:5.4
import PackageDescription

let checksum = "87836e8f7809d2275a9019e07829cfbb752b2913028d4f65c9575ed69d774e53"
let version = "51.5.0"
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
