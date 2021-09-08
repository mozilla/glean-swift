// swift-tools-version:5.4
import PackageDescription

let checksum = "9e9e4aa79a6f1607ebe6c9b6a0c854a55b1dd686a47e4f212bc7e95170706799"
let version = "40.2.0"
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
