// swift-tools-version:5.4
import PackageDescription

let checksum = "39a28f26b609bd3e78aacbfad627ccc55e5414aa9c14a6e7f791ff086b0df463"
let version = "44.2.0"
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
