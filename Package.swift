// swift-tools-version:5.4
import PackageDescription

let checksum = "50482283cb0838b1c1b6aabfd6636269dde677409a270a152aa81d1f58deb794"
let version = "51.6.0"
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
