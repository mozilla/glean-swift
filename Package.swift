// swift-tools-version:5.4
import PackageDescription

let checksum = "f0a30d524111ca43bd5810015580aea5d8573a83b06fc7aa49967f592a332185"
let version = "41.0.0"
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
