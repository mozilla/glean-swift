// swift-tools-version:5.4
import PackageDescription

let checksum = "d5fa732248ff9f181ff08e32cf4e45cbcf14f6c2aa2834eec040c392de8fc56b"
let version = "42.3.2"
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
