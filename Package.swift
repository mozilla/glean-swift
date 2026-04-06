// swift-tools-version:5.5
import PackageDescription

let checksum = "0bbf5b8202dcae25ffb627ee91bcd6e3c07b0b8127e4398e35f3fef12f41290b"
let version = "67.2.0"
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
