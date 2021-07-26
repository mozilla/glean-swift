// swift-tools-version:5.4
import PackageDescription

let checksum = "317f27b715b76bc7dfb4f9fa36cdff6aa54eb06f632d7ea1bac42bdf98993f91"
let version = "39.0.4"
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
