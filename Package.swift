// swift-tools-version:5.5
import PackageDescription

let checksum = "3c4e760406c981f7220fff39fe10ee99ddd2aaa6649355610c0d12f773843ff3"
let version = "64.1.0"
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
