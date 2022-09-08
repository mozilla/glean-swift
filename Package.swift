// swift-tools-version:5.4
import PackageDescription

let checksum = "1bfb4be7fd5e457839e8c2c3b831f7b053e17c4d08cbeee6ba8ef13ed035db8a"
let version = "51.2.0"
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
