// swift-tools-version:5.5
import PackageDescription

let checksum = "90d729d24a7e3364064fa5729672873e86815917ae6f5fbcc9cb9ba541019b61"
let version = "65.1.1"
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
