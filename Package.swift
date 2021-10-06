// swift-tools-version:5.4
import PackageDescription

let checksum = "7cd42c693eb64ac22594e4f4aa81f1f3ce95b3445e8be5d267f5ec8f9e768e74"
let version = "42.0.0"
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
