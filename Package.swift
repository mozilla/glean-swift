// swift-tools-version:5.5
import PackageDescription

let checksum = "372d50296f1dc1238f6030796de6281258efeb6d58614b83af93fdb8035e76c7"
let version = "68.0.0"
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
