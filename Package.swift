// swift-tools-version:5.5
import PackageDescription

let checksum = "eed450132acef8843899dc264239dd3793aed7b4ebc15f95572e550463bfbba0"
let version = "67.3.2"
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
