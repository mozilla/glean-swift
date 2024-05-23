// swift-tools-version:5.5
import PackageDescription

let checksum = "545a16d3ff78970cc41222ce2259faf7bb9ddde54272e40589429d84b1c751cb"
let version = "60.2.0"
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
