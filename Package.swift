// swift-tools-version:5.5
import PackageDescription

let checksum = "d534e4d7cb81c7ea298eb0a592d2a274c82566a63c9e339f59e36932ba7906c6"
let version = "66.3.0"
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
