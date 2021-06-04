// swift-tools-version:5.4
import PackageDescription

let checksum = "1f9b0b5ebf3c960d1cda454c498a97e6f32ed0d6e6b71ebde4dfb2b616477b4d"
let version = "39.0.1"
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
