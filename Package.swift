// swift-tools-version:5.4
import PackageDescription

let checksum = "4df8a4e4a7d2b7519af9dfbba31979c2878dbd926aad6cdd353e4811bf4f73db"
let version = "52.7.0"
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
