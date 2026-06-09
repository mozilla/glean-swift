// swift-tools-version:5.5
import PackageDescription

let checksum = "a94f5574609cd55ee24ea7e604609ba4adf1af753eb7ec1dc398f8447317a0ac"
let version = "67.5.0"
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
