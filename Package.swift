// swift-tools-version:5.4
import PackageDescription

let checksum = "d91d104ed08fb4d24ff87e433ccb7b466036ee6ea8ee08ad4c8e1992a50aff5e"
let version = "42.3.1"
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
