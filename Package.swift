// swift-tools-version:5.4
import PackageDescription

let checksum = "7d840bdc4c20ef8ec6b2b4e3cd54f34e16831b19cb0a2a8dbb8af06d1aa81bcf"
let version = "51.1.0"
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
