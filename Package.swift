// swift-tools-version:5.5
import PackageDescription

let checksum = "ebc120c5f3efb44449d39827c3b0cc1d11dff486fa528f52fd104927a655c9ea"
let version = "65.2.0"
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
