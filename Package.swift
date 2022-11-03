// swift-tools-version:5.4
import PackageDescription

let checksum = "a446202ea67930ffca24235966b2845b6eff3692bf313f2f102668c7dd5975e5"
let version = "51.8.0"
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
