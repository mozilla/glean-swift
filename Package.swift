// swift-tools-version:5.5
import PackageDescription

let checksum = "d2a17623502ce6cdd79c24ea237fb49755be49ba42f48b09f7fc03022d54b481"
let version = "66.1.2"
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
