// swift-tools-version:5.5
import PackageDescription

let checksum = "a6de1ce9d1f3cdb8bcd3b1ca0947fd106b4f7e11649fb04fc9df4c6b8b6ef20a"
let version = "58.0.0"
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
