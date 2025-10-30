// swift-tools-version:5.5
import PackageDescription

let checksum = "0ddfd235f29038a931a7b85fd3009adbd79554ad97cd11fd5fa3eaad41aa4d1f"
let version = "66.0.1"
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
