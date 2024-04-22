// swift-tools-version:5.5
import PackageDescription

let checksum = "73b3c80102bdfb8ec3545a83344a31be911e9b783ffac7c21fab9a6b8df61fb2"
let version = "60.0.0"
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
