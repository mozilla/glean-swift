// swift-tools-version:5.4
import PackageDescription

let checksum = "8466995d4ebfc42dbabbe326b20145b017c30b3789368e996bb8b8307ce88ff7"
let version = "52.2.0"
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
