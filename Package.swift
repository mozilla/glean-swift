// swift-tools-version:5.5
import PackageDescription

let checksum = "3a5cec46241a7b8a1eb3ec7005b899847d2014ece4066c48bbf911cf615a7506"
let version = "64.5.2"
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
