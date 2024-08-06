// swift-tools-version:5.5
import PackageDescription

let checksum = "a3a2043e675d0513712b44297c9a40693eb032ea94572cb216c6891f8abdea5d"
let version = "60.5.0"
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
