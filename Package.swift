// swift-tools-version:5.5
import PackageDescription

let checksum = "b6fae5a9225ea0dd62a752bb90b049f00b028ca3674da88f2f1894be2ad0c332"
let version = "67.3.0"
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
