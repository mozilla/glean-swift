// swift-tools-version:5.5
import PackageDescription

let checksum = "ddb7e5a3a4caaa44294a7d9d8f650d0dddb130a5d71202d46097a7b203b47bb4"
let version = "67.3.1"
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
