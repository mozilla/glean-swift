// swift-tools-version:5.4
import PackageDescription

let checksum = "47dad8fe32fa6b0399cfd520c037b62af034564272441428facfcf13f8f0d729"
let version = "50.1.3"
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
