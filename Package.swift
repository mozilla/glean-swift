// swift-tools-version:5.5
import PackageDescription

let checksum = "54566426deb816f67624212d34dbeae4e919b3e25081a93606ca2a0b39ba545b"
let version = "61.0.0"
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
