// swift-tools-version:5.4
import PackageDescription

let checksum = "f3115195f9441b26adc1e07cd1c616b79b81627caa066a9bc987484c14727f4c"
let version = "38.0.0"
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
