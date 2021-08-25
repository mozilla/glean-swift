// swift-tools-version:5.4
import PackageDescription

let checksum = "5d75a8af64339559798579618f8c4aba82d9ce568b7660073484e9f7bd569356"
let version = "40.1.0"
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
