// swift-tools-version:5.4
import PackageDescription

let checksum = "cc777c349f94bd6e3733c066981e838aa124f416cdf21709cff56b0332d70ac5"
let version = "51.0.0"
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
