// swift-tools-version:5.5
import PackageDescription

let checksum = "c1146bac82616b4ab04a714b2d7f4419000d243bdee6c408282c548c5182589b"
let version = "69.0.0"
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
