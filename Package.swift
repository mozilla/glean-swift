// swift-tools-version:5.5
import PackageDescription

let checksum = "9e61b3d93ccf90f863afa2f5a5a8605bd80ee641a05dc6c2dac44ba5e56ca8a6"
let version = "60.1.0"
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
