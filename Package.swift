// swift-tools-version:5.5
import PackageDescription

let checksum = "6098f78bd8b4f4800221006ddeaf6534e23e3504139ca85bc6d8061a1dd199ca"
let version = "67.1.0"
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
