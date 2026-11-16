// swift-tools-version:5.5
import PackageDescription

let checksum = "d799337491b55dc93e54b42de71b4f8141aa2faf7e5ab3315368570f517b9645"
let version = "71.1.0"
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
