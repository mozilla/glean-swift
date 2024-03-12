// swift-tools-version:5.5
import PackageDescription

let checksum = "1b398c48ab740a00763f744f84898093f7d9ca2f090313eb8089a54e37c49059"
let version = "58.1.0"
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
