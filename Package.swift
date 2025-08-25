// swift-tools-version:5.5
import PackageDescription

let checksum = "fe0601d0820d47047e8f768e2bb29625d005d1379eda7cb344fdab7d84888b2e"
let version = "65.0.2"
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
