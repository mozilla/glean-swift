// swift-tools-version:5.4
import PackageDescription

let checksum = "6fb92e5997dc251dd48d3fdf27ed18183dee6488eed550b6d046d1be9196570c"
let version = "52.3.0"
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
