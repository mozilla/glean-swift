// swift-tools-version:5.5
import PackageDescription

let checksum = "aefa8be55698ad917505bf8e82c39c9f4edc02568f3483ee7106391c1e01c741"
let version = "70.1.0"
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
