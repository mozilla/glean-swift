// swift-tools-version:5.5
import PackageDescription

let checksum = "2f4e2029470763a81c0744226e500b6ddb591ee8d0ecb0e479223fff81f2ae13"
let version = "62.0.0"
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
