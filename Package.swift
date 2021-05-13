// swift-tools-version:5.4
import PackageDescription

let checksum = "checksum"
let version = "0.0.0"
let url = "https://github.com/mozilla/glean-swift/releases/download/\(version)/Glean.xcframework.zip"

let package = Package(
    name: "Glean",
    platforms: [.iOS(.v11)],
    products: [
        .library(name: "Glean", targets: ["Glean"]),
    ],
    targets: [
        .binaryTarget(name: "Glean", path: "./archives/Glean.xcframework"),
    ]
)
