// swift-tools-version:5.4
import PackageDescription

let checksum = "0cf060daddbdb84d493c9b95d6d8090892f23d78d606cf1c07ed50a8e1658e83"
let version = "52.0.0"
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
