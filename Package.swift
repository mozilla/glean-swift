// swift-tools-version:5.5
import PackageDescription

let checksum = "5df4363b3f5bc3c0f5ee64fb627da96e63b9605eb86ec03d1b3b9e474c3e479e"
let version = "71.0.0"
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
