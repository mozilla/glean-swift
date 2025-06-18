// swift-tools-version:5.5
import PackageDescription

let checksum = "5aa25b20cb09ea9b45c8262ad7cd82558afd08d2a4e47ec00e98b80c50127b81"
let version = "64.5.0"
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
