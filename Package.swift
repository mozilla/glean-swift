// swift-tools-version:5.5
import PackageDescription

let checksum = "686f3f4f3c2e8365909cb326d621776660220c513dc0a02b25b6429be778e7f6"
let version = "68.0.1"
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
