// swift-tools-version:5.5
import PackageDescription

let checksum = "9bfb1a7a99394bdd72160e01bfc00dfe19c5eedfe42b2d1b5871f42c00b63424"
let version = "64.5.1"
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
