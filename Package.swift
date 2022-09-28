// swift-tools-version:5.4
import PackageDescription

let checksum = "0ac8efac2219476fc215cf9910b0319cd815561f9771bdab5ba45dd3e6c1989b"
let version = "51.3.0"
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
