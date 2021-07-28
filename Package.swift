// swift-tools-version:5.4
import PackageDescription

let checksum = "be31cc90a5f9587b7e9c7b08ab6979335bf058e1b660502d4d6b067607d0509e"
let version = "40.0.0"
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
