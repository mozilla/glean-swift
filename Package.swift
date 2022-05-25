// swift-tools-version:5.4
import PackageDescription

let checksum = "eeeb2da246a5d30409bbd14ad6196f013e2047ab242746c94331866ff9a29c1f"
let version = "50.0.1"
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
