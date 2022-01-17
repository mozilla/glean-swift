// swift-tools-version:5.4
import PackageDescription

let checksum = "2fd2761764c96a02efd3cd59d0d33e998f76c77a9366a30257ffa08cab2b3222"
let version = "43.0.2"
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
