// swift-tools-version:5.4
import PackageDescription

let checksum = "eb235d456b43c65622c6791543a17f1a9c90ccaaf227b8a71f8f3c5f914a488e"
let version = "52.4.2"
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
