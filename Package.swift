// swift-tools-version:5.5
import PackageDescription

let checksum = "013843ca8756a6835bf534cc362b1bd8f4e4d6fb70daea85ee7efd34c5761dc0"
let version = "66.1.0"
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
