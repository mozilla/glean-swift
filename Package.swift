// swift-tools-version:5.4
import PackageDescription

let checksum = "50de2ff5285f40048b108caf9199410fc25304137e4664b60cec8fd01e3dd15c"
let version = "38.0.2"
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
