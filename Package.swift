// swift-tools-version:5.5
import PackageDescription

let checksum = "ca5a5d4859334e83158c6732e3b72499541799c0d66f12328186c698433b17ca"
let version = "67.4.0"
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
