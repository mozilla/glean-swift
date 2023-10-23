// swift-tools-version:5.4
import PackageDescription

let checksum = "e0837b822a4d3df238159ac9c906a595d57d33f2f71fd6c9c34f616bdf97cc90"
let version = "55.0.0"
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
