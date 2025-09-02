// swift-tools-version:5.5
import PackageDescription

let checksum = "22944d64722c7df4f7ce48d09554e35f1f7781537ee9bbdcbf3df76ed9a9f29b"
let version = "65.0.3"
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
