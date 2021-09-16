// swift-tools-version:5.4
import PackageDescription

let checksum = "02a8b4893abdd862de494101827a7b86eb4c9f916065d74e5a064e902a7dc573"
let version = "41.1.0"
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
