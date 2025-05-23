// swift-tools-version:5.5
import PackageDescription

let checksum = "0115190e1598001547939968b05a81bea2088b10a58018cd31cd03d3479314a1"
let version = "64.3.1"
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
