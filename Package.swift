// swift-tools-version:5.5
import PackageDescription

let checksum = "9df1a857768d7dc31aee48b294af361c414763d5c4df94474e6e9563f7914bb1"
let version = "64.5.3"
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
