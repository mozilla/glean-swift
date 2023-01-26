// swift-tools-version:5.4
import PackageDescription

let checksum = "ac20065a744680b8035150786e831c6de70bed4ff1d6215a77f91789e755d431"
let version = "52.1.0"
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
