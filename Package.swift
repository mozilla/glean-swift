// swift-tools-version:5.5
import PackageDescription

let checksum = "086ee6b953a0f20aeca7b9637be19f4eeb1cbcd259ddd4e077ba29bd16136b55"
let version = "61.2.0"
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
