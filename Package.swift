// swift-tools-version:5.5
import PackageDescription

let checksum = "0db0469435af177b1fced8a53034bc7ff90cebca148451cbe69da5e1e15f0fba"
let version = "63.0.0"
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
