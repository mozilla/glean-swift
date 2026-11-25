// swift-tools-version:5.5
import PackageDescription

let checksum = "65b947d749f1c7f12192d0bdda0bf99cba6f0cb7271574d3dd10298f8fbf217d"
let version = "71.2.0"
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
