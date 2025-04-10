// swift-tools-version:5.5
import PackageDescription

let checksum = "63523c2bef14e6b08dbb87a173279567db1d1dabd0980a537949b22e7272f1ba"
let version = "64.1.1"
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
