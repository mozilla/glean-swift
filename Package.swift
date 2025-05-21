// swift-tools-version:5.5
import PackageDescription

let checksum = "d48ca270cbfc25319e66c08294ac317a4c1e26bfc85bf82e134a09e0eff3b77d"
let version = "64.3.0"
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
