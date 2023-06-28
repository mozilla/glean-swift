// swift-tools-version:5.4
import PackageDescription

let checksum = "7cdd5ef2ae75b1f8592bea5e37b25c22d429031826d56cc89a0e74f7a2c379f9"
let version = "53.1.0"
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
