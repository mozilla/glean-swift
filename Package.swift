// swift-tools-version:5.5
import PackageDescription

let checksum = "1d6acb00115259de0fc9b25fa9229d2391491b849af58db96974565ebe79a997"
let version = "60.0.1"
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
