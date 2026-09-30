// swift-tools-version:5.5
import PackageDescription

let checksum = "87e38b61ef2f4e039985dc0753ed2c9275af7b8247ad6a5c995c50ea9fe97bb0"
let version = "70.2.1"
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
