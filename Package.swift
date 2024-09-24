// swift-tools-version:5.5
import PackageDescription

let checksum = "ae886d33be8f5321d6109089416602001dd0b25c32ba05788a736963fabafd98"
let version = "61.1.0"
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
