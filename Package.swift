// swift-tools-version:5.4
import PackageDescription

let checksum = "ab62b504b8ac33eaf898415f0d98b5adc4aaa1d75ebe9c5b424a818b02e554a7"
let version = "52.1.1"
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
