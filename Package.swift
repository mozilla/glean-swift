// swift-tools-version:5.5
import PackageDescription

let checksum = "5d5602ce65071e4eb559b80f440111a70d6e4a9f3267cd3f8396c67ac762495f"
let version = "64.5.5"
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
