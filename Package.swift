// swift-tools-version:5.4
import PackageDescription

let checksum = "41a5246b43ec4867210eec05258a033acdb3873ee2d90ec7fbd38e26d90a5d61"
let version = "42.1.0"
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
