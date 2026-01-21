// swift-tools-version:5.5
import PackageDescription

let checksum = "24648e260e2685a4ab8f2e032284a54abd189995e08459af3e3b67d4e57a461c"
let version = "67.0.0"
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
