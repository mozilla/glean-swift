// swift-tools-version:5.5
import PackageDescription

let checksum = "7e4df385243deba7916e7285e9481d6df94a013b8ee6dc6db18dd92f5c782959"
let version = "64.5.4"
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
