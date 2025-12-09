// swift-tools-version:5.5
import PackageDescription

let checksum = "71bdb1d4028adf848125f932391bf2322e36bc859f9ac83c493b87c6463c8fd1"
let version = "66.2.0"
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
