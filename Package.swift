// swift-tools-version:5.5
import PackageDescription

let checksum = "5d98071d0d7c0be9015bc803445ef433a21ee86e1d4eadaa6e00d2154f0c1184"
let version = "65.2.3"
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
